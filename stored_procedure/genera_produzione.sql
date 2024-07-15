CREATE OR REPLACE PROCEDURE "C##DB_COMET".GENERA_PRODUZIONE(
	p_CFDipendente		IN DIPENDENTE.CODICEFISCALE%TYPE  
) IS 
	TYPE prod_type IS RECORD (
		codice_prodotto_finito 		PRODOTTOFINITO.CODICEPRODOTTOFINITO%TYPE,
	    produzioni_necessarie	NUMBER 
	);

	CURSOR c_pf_prod IS
		SELECT f.CODICEPRODOTTOFINITO, CEIL(qdp.QTA_DA_PRODURRE/f.PRODUZIONEPREVISTA) AS PRODUZIONI_NECESSARIE
		FROM FORMULA f 
		JOIN (
			SELECT CODICEPRODOTTOFINITO, (QUANTITARIMANENTE * -1) AS QTA_DA_PRODURRE  
			FROM INVENTARIO_PRODOTTI_FINITI 
			WHERE QUANTITARIMANENTE < 0
		) qdp ON qdp.CODICEPRODOTTOFINITO = f.CODICEPRODOTTOFINITO;
	
	CURSOR c_cf_dip(cf_sup CHAR, dt_inizio DATE, dt_fine DATE) IS
		SELECT 
			d.CODICEFISCALE 
		FROM DIPENDENTE d 
		WHERE d.CFSUPERVISORE = cf_sup
		AND NOT EXISTS (
			SELECT 1 FROM ASSENZA a 
			WHERE a.CODICEFISCALEDIPENDENTE = d.CODICEFISCALE
			AND (dt_inizio BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA OR dt_fine BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA)
		);
	
	CURSOR c_linea IS
		SELECT CODICELINEA 
		FROM LINEA l;

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
	query := query || 'FROM CALENDARIOPRODUZIONE c ';
	query := query || 'JOIN LINEA l ON l.CODICELINEA = c.CODICELINEA ';
	query := query || 'WHERE c.DATAFINEPRODUZIONE > SYSDATE';

	EXECUTE IMMEDIATE query INTO dt_inizio_produzione, dt_fine_produzione;

	OPEN c_pf_prod;
	
	LOOP
	FETCH c_pf_prod INTO prod_record;
	EXIT WHEN c_pf_prod%NOTFOUND;
	
		FOR counter IN 0..prod_record.produzioni_necessarie-1
		LOOP
		
			OPEN c_linea;
	
			LOOP
			FETCH c_linea INTO codice_linea;
			EXIT WHEN c_linea%NOTFOUND;
				SELECT CODICEFISCALE 
				INTO cf_supervisore
				FROM (
					SELECT
						d.CODICEFISCALE, 
						MAX(c.DATAFINEPRODUZIONE) ULTIMO_TURNO 
					FROM DIPENDENTE d 
					LEFT JOIN CALENDARIOPRODUZIONE c ON c.CODICEFISCALESUPERVISORE = d.CODICEFISCALE 
					WHERE d.MANSIONE = 'Produzione' AND d.CFSUPERVISORE IS NULL
					AND NOT EXISTS (
						SELECT 1 FROM ASSENZA a 
						WHERE a.CODICEFISCALEDIPENDENTE = d.CODICEFISCALE
						AND (dt_inizio_produzione BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA OR dt_fine_produzione BETWEEN a.DATAINIZIOASSENZA AND a.DATAFINEASSENZA)
					)
					GROUP BY d.CODICEFISCALE
					ORDER BY MAX(c.DATAFINEPRODUZIONE)
					FETCH FIRST 1 ROWS ONLY
				);
		
				INSERT INTO CALENDARIOPRODUZIONE VALUES (
					calcola_id('CALENDARIOPRODUZIONE', 'CP'),
					dt_inizio_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '1' SECOND,
					dt_fine_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '8' HOUR,
					codice_linea,
					prod_record.codice_prodotto_finito,
					cf_supervisore
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
				
			END LOOP;
			CLOSE c_linea;
	
		loop_counter := loop_counter + 1;
	
		END LOOP;
	END LOOP;
	
	CLOSE c_pf_prod;
END;