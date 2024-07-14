CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_DISPONIBILITA_LINEA(
	p_CodiceLinea 			IN Linea.CodiceLinea%TYPE, 
	p_DataInizioProduzione 	IN CalendarioProduzione.DataInizioProduzione%TYPE, 
	p_DataFineProduzione 	IN CalendarioProduzione.DataFineProduzione%TYPE
) IS 
	count_linea_occupata NUMBER;
BEGIN 
	SELECT COUNT(*)
	INTO count_linea_occupata
	FROM CALENDARIOPRODUZIONE c 
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