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
	
	prod_record prod_type;
	query VARCHAR2(500);
	dt_inizio_produzione DATE;
	dt_fine_produzione DATE;
	loop_counter NUMBER := 0;
	codice_linea VARCHAR2(10);
	codice_formula VARCHAR(10);

	count_dipendente NUMBER;
	DIPENDENTE_NON_ABILITATO EXCEPTION;
BEGIN 	
	SELECT CODICELINEA INTO codice_linea FROM LINEA WHERE NOMELINEA = 'Mescolatore';

	query := 'SELECT ';
	query := query || 'NVL(MAX(c.DATAFINEPRODUZIONE), TRUNC(SYSDATE) + INTERVAL ''1'' DAY - INTERVAL ''1'' SECOND) AS dt_inizio_produzione, ';
	query := query || 'NVL(MAX(c.DATAFINEPRODUZIONE), TRUNC(SYSDATE) + INTERVAL ''1'' DAY - INTERVAL ''1'' SECOND) AS dt_fine_produzione ';
	query := query || 'FROM CALENDARIOPRODUZIONE c ';
	query := query || 'JOIN LINEA l ON l.CODICELINEA = c.CODICELINEA ';
	query := query || 'WHERE l.NOMELINEA = ''Mescolatore''';

	DBMS_OUTPUT.PUT_LINE(query);

	EXECUTE IMMEDIATE query INTO dt_inizio_produzione, dt_fine_produzione;

	OPEN c_pf_prod;
	
	LOOP
	FETCH c_pf_prod INTO prod_record;
	EXIT WHEN c_pf_prod%NOTFOUND;

		SELECT CODICEFORMULA 
		INTO codice_formula
		FROM FORMULA 
		WHERE CODICEPRODOTTOFINITO = prod_record.codice_prodotto_finito;
	
		FOR counter IN 0..prod_record.produzioni_necessarie-1
		LOOP
		
			INSERT INTO CALENDARIOPRODUZIONE VALUES (
				calcola_id('CALENDARIOPRODUZIONE', 'CP'),
				dt_inizio_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '1' SECOND,
				dt_fine_produzione + INTERVAL '1' HOUR * loop_counter*8 + INTERVAL '8' HOUR,
				codice_linea,
				codice_formula,
				p_CFDipendente
			);
			
			loop_counter := loop_counter + 1;
		END LOOP;
	END LOOP;
	
	CLOSE c_pf_prod;
END; 