CREATE OR REPLACE TRIGGER "C##DB_COMET".DATE_ACQUISTO_INCORENTI
BEFORE INSERT OR UPDATE ON ACQUISTO
FOR EACH ROW
DECLARE
DATE_NON_VALIDE EXCEPTION;
BEGIN
	IF(:NEW.DATACONSEGNA - :NEW.DATAORDINE) < 0 THEN
		RAISE DATE_NON_VALIDE;
	END IF;
EXCEPTION
	WHEN DATE_NON_VALIDE THEN 
		RAISE_APPLICATION_ERROR(-20009,'DATACONSEGNA antecedente a DATAACQUISTO. Non è possibile procedere con l''aggiornamento/la modifica.');
END;