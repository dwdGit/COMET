CREATE OR REPLACE TRIGGER LINEA_OCCUPATA
BEFORE INSERT OR UPDATE ON CALENDARIOPRODUZIONE
FOR EACH ROW 
DECLARE 
	LINEA_OCCUPATA EXCEPTION;
	count_linea_occupata NUMBER;
BEGIN 
	SELECT COUNT(*)
	INTO count_linea_occupata
	FROM CALENDARIOPRODUZIONE c 
	WHERE c.CODICELINEA = :NEW.CODICELINEA AND 
	(
		(:NEW.DATAINIZIOPRODUZIONE BETWEEN c.DATAINIZIOPRODUZIONE AND c.DATAFINEPRODUZIONE) OR
		(:NEW.DATAFINEPRODUZIONE BETWEEN c.DATAINIZIOPRODUZIONE AND c.DATAFINEPRODUZIONE)
	);

	IF count_linea_occupata > 0 THEN 
		RAISE LINEA_OCCUPATA;
	END IF;
EXCEPTION
	WHEN LINEA_OCCUPATA THEN
		RAISE_APPLICATION_ERROR(-20021, 'La linea è occupata nel periodo indicato. Non è possibile procedere con l''inserimento.');
END;