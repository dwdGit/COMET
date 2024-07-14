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
	FROM ASSENZA
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
	JOIN TURNO t ON t.CFDIPENDENTE = d.CODICEFISCALE 
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