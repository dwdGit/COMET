CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_TURNI(
	p_CFDipendente		IN DIPENDENTE.CODICEFISCALE%TYPE,
	p_DataInizioTurno	IN DATE,
	p_DataFineTurno		IN DATE
) IS
	count_turni NUMBER;
BEGIN
	SELECT COUNT(*)
	INTO count_turni 
	FROM TURNO t 
	WHERE 
	(
		(p_DataInizioTurno BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO) OR 
		(p_DataFineTurno BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO)
	) AND t.CFDIPENDENTE = p_CFDipendente;

	IF count_turni > 0 THEN
		DBMS_OUTPUT.PUT_LINE('Il dipendente con codice fiscale ' || p_CFDipendente || ' è già impegnato nel periodo indicato');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Per il dipendente con codice fiscale ' || p_CFDipendente || ' può essere inserito un turno nel periodo indicato.');
	END IF;
END;