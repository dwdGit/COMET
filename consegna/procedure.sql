/* Procedura che genera gli ordini di acquisto in base alle materie prime necessarie per la produzione.
	Attuabile soltanto da dipendenti appartenenti al reparto acquisti.
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".genera_acquisto(
	p_CFDipendente		IN DIPENDENTE.CODICEFISCALE%TYPE
) IS 
	TYPE mp_rec_type IS RECORD (
        codice_materia_prima     MATERIAPRIMA.CODICEMATERIAPRIMA%TYPE,
        quantita_da_acquistare NUMBER,
        costo_totale       NUMBER
    );
   
	CURSOR c_pivaazienda IS 
		SELECT DISTINCT 
			PIVAAZIENDA
		FROM "C##DB_COMET".acquisto_mp;
	
	CURSOR c_mp(p_pivaazienda VARCHAR2) IS
		SELECT 
			CODICEMATERIAPRIMA,
			QUANTITA_DA_ACQUISTARE,
			COSTO_TOTALE
		FROM "C##DB_COMET".ACQUISTO_MP
		WHERE PIVAAZIENDA = p_pivaazienda;
	
	piva_record AZIENDA.PARTITAIVA%TYPE;
	mp_record mp_rec_type;
	numero_fattura VARCHAR2(1000);
BEGIN 
	OPEN c_pivaazienda;

    LOOP
        FETCH c_pivaazienda INTO piva_record;
        EXIT WHEN c_pivaazienda%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(piva_record);
		
			numero_fattura := calcola_id('ACQUISTO', 'FATTA');
		
			INSERT INTO ACQUISTO VALUES
			(
				numero_fattura,
				SYSDATE,
				NULL,
				'RICEVUTO',
				piva_record,
				p_CFDipendente
			);
			
			OPEN c_mp(piva_record);

	        LOOP
	            FETCH c_mp INTO mp_record;
	            EXIT WHEN c_mp%NOTFOUND;
	           	
		            INSERT INTO DETTAGLIOACQUISTO VALUES
					(
						calcola_id('DETTAGLIOACQUISTO', 'DA'),
						mp_record.quantita_da_acquistare,
						mp_record.costo_totale,
						mp_record.codice_materia_prima,
						numero_fattura
					);
	        END LOOP;
	
	        CLOSE c_mp;
    END LOOP;

    CLOSE c_pivaazienda;
END;

/*	Procedura che genera il calendario di produzione in base agli ordini da parte dei clienti.
	Attuabile soltanto dai dipendenti che sono supervisori della produzione.
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".GENERA_PRODUZIONE IS 
	TYPE prod_type IS RECORD (
		codice_prodotto_finito 		PRODOTTOFINITO.CODICEPRODOTTOFINITO%TYPE,
	    produzioni_necessarie	NUMBER 
	);

	CURSOR c_pf_prod IS
		SELECT f.CODICEPRODOTTOFINITO, CEIL(qdp.QTA_DA_PRODURRE/f.PRODUZIONEPREVISTA) AS PRODUZIONI_NECESSARIE
		FROM "C##DB_COMET".FORMULA f 
		JOIN (
			SELECT CODICEPRODOTTOFINITO, (QUANTITARIMANENTE * -1) AS QTA_DA_PRODURRE  
			FROM "C##DB_COMET".INVENTARIO_PRODOTTI_FINITI 
			WHERE QUANTITARIMANENTE < 0
		) qdp ON qdp.CODICEPRODOTTOFINITO = f.CODICEPRODOTTOFINITO;
	
	CURSOR c_cf_dip(cf_sup CHAR, dt_inizio DATE, dt_fine DATE) IS
		SELECT 
			d.CODICEFISCALE 
		FROM "C##DB_COMET".DIPENDENTE d 
		WHERE d.CFSUPERVISORE = cf_sup
		AND NOT EXISTS (
			SELECT 1 FROM "C##DB_COMET".ASSENZA a 
			WHERE a.CODICEFISCALEDIPENDENTE = d.CODICEFISCALE
			AND (dt_inizio BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA OR dt_fine BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA)
		);
	
	CURSOR c_linea IS
		SELECT CODICELINEA 
		FROM "C##DB_COMET".LINEA l;

	prod_record prod_type;
	query VARCHAR2(500);
	dt_inizio_produzione DATE;
	dt_fine_produzione DATE;
	loop_counter NUMBER := 0;
	codice_linea VARCHAR2(10);
	codice_formula VARCHAR(10);
	cf_supervisore CHAR(16);
	cf_dipendente CHAR(16);

	count_dipendente NUMBER;
BEGIN 

	query := 'SELECT ';
	query := query || 'NVL(MAX(c.DATAFINEPRODUZIONE), TRUNC(SYSDATE) + INTERVAL ''1'' DAY - INTERVAL ''1'' SECOND) AS dt_inizio_produzione, ';
	query := query || 'NVL(MAX(c.DATAFINEPRODUZIONE), TRUNC(SYSDATE) + INTERVAL ''1'' DAY - INTERVAL ''1'' SECOND) AS dt_fine_produzione ';
	query := query || 'FROM "C##DB_COMET".CALENDARIOPRODUZIONE c ';
	query := query || 'JOIN "C##DB_COMET".LINEA l ON l.CODICELINEA = c.CODICELINEA ';
	query := query || 'WHERE c.DATAFINEPRODUZIONE > SYSDATE';

	EXECUTE IMMEDIATE query INTO dt_inizio_produzione, dt_fine_produzione;

	OPEN c_pf_prod;
	
	LOOP
	FETCH c_pf_prod INTO prod_record;
	EXIT WHEN c_pf_prod%NOTFOUND;
	
		FOR counter IN 0..prod_record.produzioni_necessarie-1
		LOOP
		
			SELECT CODICEFISCALE 
				INTO cf_supervisore
				FROM (
					SELECT
						d.CODICEFISCALE, 
						MAX(c.DATAFINEPRODUZIONE) ULTIMO_TURNO 
					FROM DIPENDENTE d 
					LEFT JOIN "C##DB_COMET".CALENDARIOPRODUZIONE c ON c.CODICEFISCALESUPERVISORE = d.CODICEFISCALE 
					WHERE d.MANSIONE = 'Produzione' AND d.CFSUPERVISORE IS NULL
					AND NOT EXISTS (
						SELECT 1 FROM "C##DB_COMET".ASSENZA a 
						WHERE a.CODICEFISCALEDIPENDENTE = d.CODICEFISCALE
						AND (dt_inizio_produzione BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA OR dt_fine_produzione BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA)
					)
					GROUP BY d.CODICEFISCALE
					ORDER BY MAX(c.DATAFINEPRODUZIONE)
					FETCH FIRST 1 ROWS ONLY
				);
			
			OPEN c_cf_dip(cf_supervisore, dt_inizio_produzione, dt_fine_produzione);

	        LOOP
	            FETCH c_cf_dip INTO cf_dipendente;
	            EXIT WHEN c_cf_dip%NOTFOUND;
	           	
		            INSERT INTO TURNO VALUES
					(
						calcola_id('TURNO', 'TRN'),
						dt_inizio_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '1' SECOND,
						dt_fine_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '8' HOUR,
						cf_dipendente
					);
	        END LOOP;
	
	        CLOSE c_cf_dip;
			
			OPEN c_linea;
	
			LOOP
			FETCH c_linea INTO codice_linea;
			EXIT WHEN c_linea%NOTFOUND;
				
		
				INSERT INTO CALENDARIOPRODUZIONE VALUES (
					calcola_id('CALENDARIOPRODUZIONE', 'CP'),
					dt_inizio_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '1' SECOND,
					dt_fine_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '8' HOUR,
					codice_linea,
					prod_record.codice_prodotto_finito,
					cf_supervisore
				);
				
			END LOOP;
			CLOSE c_linea;
	
		loop_counter := loop_counter + 1;
	
		END LOOP;
	END LOOP;
	
	CLOSE c_pf_prod;
END;

/*	Procedura utile per ritornare l'azienda che vende una certa materia prima al prezzo più conveniente.
	Attuabile dal reparto acquisti.
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".MP_PREZZO_CONVENIENTE(
	p_CodiceMateriaPrima IN MateriaPrima.CodiceMateriaPrima%TYPE, 
	p_QuantitaDaAcquistare IN NUMBER
) IS 
	piva_azienda AZIENDA_MATERIAPRIMA.PIVAAZIENDA%TYPE;
	quantita_da_acquistare NUMBER;
	costo_totale NUMBER;
	unita_misura MATERIAPRIMA.UNITAMISURA%TYPE;
BEGIN 
	SELECT
	amp.PIVAAZIENDA, 
	CASE 
		WHEN imp.QUANTITADAACQUISTARE >= amp.QUANTITAMINIMADAACQUISTARE THEN
			CEIL((imp.QUANTITADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.QUANTITAPRODOTTO 
		ELSE 
			CEIL((amp.QUANTITAMINIMADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.QUANTITAPRODOTTO
	END AS QUANTITA_DA_ACQUISTARE,
	mp.UNITAMISURA,
	CASE 
		WHEN imp.QUANTITADAACQUISTARE >= amp.QUANTITAMINIMADAACQUISTARE THEN
			CEIL((imp.QUANTITADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO
		ELSE 
			CEIL((amp.QUANTITAMINIMADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO
	END AS COSTO_TOTALE
	INTO piva_azienda, quantita_da_acquistare, unita_misura, costo_totale
	FROM "C##DB_COMET".AZIENDA_MATERIAPRIMA amp
	JOIN "C##DB_COMET".MATERIAPRIMA mp ON mp.CODICEMATERIAPRIMA = amp.CODICEMATERIAPRIMA 
	JOIN "C##DB_COMET".INVENTARIO_MATERIE_PRIME imp ON imp.CODICEMATERIAPRIMA = mp.CODICEMATERIAPRIMA 
	WHERE imp.QUANTITADAACQUISTARE > 0
	ORDER BY imp.CODICEMATERIAPRIMA
	FETCH FIRST 1 ROWS ONLY;

	DBMS_OUTPUT.PUT_LINE('E'' possibile acquistare la materia prima ' || p_CodiceMateriaPrima || ' in quantità ' || quantita_da_acquistare || unita_misura || ' dal fornitore ' || piva_azienda || ' al costo di €' || costo_totale);
END;

/*	Procedura che verifica la disponibilità di un dipendente in base alle assenze e ai turni in cui è già impegnato.
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_DISPONIBILITA_DIPENDENTE(
	p_CFDipendente IN Dipendente.CodiceFiscale%TYPE, 
	p_DataInizioTurno IN Turno.DataInizioTurno%TYPE, 
	p_DataFineTurno IN Turno.DataFineTurno%TYPE
) IS 
	count_assenze NUMBER;
	count_turni NUMBER;
BEGIN 
	SELECT COUNT(*)
	INTO count_assenze
	FROM "C##DB_COMET".ASSENZA
	WHERE CODICEFISCALEDIPENDENTE = p_CFDipendente AND 
	(
		(p_DataInizioTurno BETWEEN DATAINIZIOASSENZA AND DATAFINEASSENZA) OR 
		(p_DataFineTurno BETWEEN DATAINIZIOASSENZA AND DATAFINEASSENZA)	
	);

	IF count_assenze > 0 THEN 
		DBMS_OUTPUT.PUT_LINE('Il dipendente sarà assente nel periodo indicato!');
	END IF;

	SELECT COUNT(*)
	INTO count_turni
	FROM DIPENDENTE d 
	JOIN "C##DB_COMET".TURNO t ON t.CFDIPENDENTE = d.CODICEFISCALE 
	WHERE d.CODICEFISCALE = p_CFDipendente AND 
	(
		(p_DataInizioTurno BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO) OR
		(p_DataFineTurno BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO)
	);

	IF count_turni > 0 THEN 
		DBMS_OUTPUT.PUT_LINE('Il dipendente è già impegnato in altro turno nel periodo selezionato');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('E'' possibile inserire un turno per il dipendente indicato.');
	END IF;
END;

/*	Procedure che verifica se una linea è disponibile per la produzione
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_DISPONIBILITA_LINEA(
	p_CodiceLinea 			IN Linea.CodiceLinea%TYPE, 
	p_DataInizioProduzione 	IN CalendarioProduzione.DataInizioProduzione%TYPE, 
	p_DataFineProduzione 	IN CalendarioProduzione.DataFineProduzione%TYPE
) IS 
	count_linea_occupata NUMBER;
BEGIN 
	SELECT COUNT(*)
	INTO count_linea_occupata
	FROM "C##DB_COMET".CALENDARIOPRODUZIONE c 
	WHERE c.CODICELINEA = p_CodiceLinea AND 
	(
		(p_DataInizioProduzione BETWEEN c.DATAINIZIOPRODUZIONE AND c.DATAFINEPRODUZIONE) OR
		(p_DataFineProduzione BETWEEN c.DATAINIZIOPRODUZIONE AND c.DATAFINEPRODUZIONE)
	);

	IF count_linea_occupata > 0 THEN 
		DBMS_OUTPUT.PUT_LINE('Linea occupata!');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Linea non occupata, è possibile procedere con la calendarizzazione.');
	END IF;
END;

/* Procedura che data una materia prima cm 
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_MP(
	p_CodiceMateriaPrima IN MateriaPrima.CODICEMATERIAPRIMA%TYPE
) IS 
	qta_da_acquistare NUMBER;
	unita_misura MateriaPrima.UnitaMisura%TYPE;
BEGIN 
	SELECT imp.QUANTITADAACQUISTARE, m.UNITAMISURA 
	INTO qta_da_acquistare, unita_misura
	FROM "C##DB_COMET".INVENTARIO_MATERIE_PRIME imp
	JOIN "C##DB_COMET".MATERIAPRIMA m ON m.CODICEMATERIAPRIMA = imp.CODICEMATERIAPRIMA
	WHERE imp.CODICEMATERIAPRIMA = p_CodiceMateriaPrima;

	DBMS_OUTPUT.PUT_LINE('E'' necessario acquistare ' || qta_da_acquistare || unita_misura ||' della materia prima ' || p_CodiceMateriaPrima);
END;

/* Procedura che dato un prodotto finito verifica la quantità da produrre
*/
CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_PF(
	p_CodiceProdottoFinito IN ProdottoFinito.CodiceProdottoFinito%TYPE
) IS 
	qta_da_produrre NUMBER;
BEGIN 
	SELECT ipf.QUANTITARIMANENTE
	INTO qta_da_produrre
	FROM "C##DB_COMET".INVENTARIO_PRODOTTI_FINITI ipf
	JOIN "C##DB_COMET".PRODOTTOFINITO pf ON pf.CODICEPRODOTTOFINITO = ipf.CODICEPRODOTTOFINITO
	WHERE pf.CODICEPRODOTTOFINITO = p_CodiceProdottoFinito;

	IF qta_da_produrre < 0 THEN 
		qta_da_produrre := qta_da_produrre * -1;
		DBMS_OUTPUT.PUT_LINE('E'' necessario produrre ' || qta_da_produrre || ' pezzi del prodotto finito ' || p_CodiceProdottoFinito);
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Si hanno a magazzino ' || qta_da_produrre || ' pezzi del prodotto finito ' || p_CodiceProdottoFinito);
	END IF;
END;