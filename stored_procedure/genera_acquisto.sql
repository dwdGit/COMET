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
		FROM acquisto_mp;
	
	CURSOR c_mp(p_pivaazienda VARCHAR2) IS
		SELECT 
			CODICEMATERIAPRIMA,
			QUANTITA_DA_ACQUISTARE,
			COSTO_TOTALE
		FROM ACQUISTO_MP
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