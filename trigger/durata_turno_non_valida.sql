CREATE OR REPLACE TRIGGER "C##DB_COMET".DURATA_TURNO_NON_VALIDA
BEFORE INSERT OR UPDATE ON TURNO
FOR EACH ROW 
DECLARE
	DURATA_NON_VALIDA EXCEPTION;
BEGIN 
	IF (:NEW.DATAFINETURNO - :NEW.DATAINIZIOTURNO) * 24 != 8 THEN 
		RAISE DURATA_NON_VALIDA;
	END IF;

EXCEPTION
	WHEN DURATA_NON_VALIDA THEN
		RAISE_APPLICATION_ERROR(-20018, 'Durata del turno non valida. Non è possibile procedere con l''inserimento/aggiornamento.');
END;