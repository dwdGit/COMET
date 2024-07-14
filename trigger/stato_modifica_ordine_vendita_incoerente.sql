CREATE OR REPLACE TRIGGER "C##DB_COMET".STATO_INSERIMENTO_VENDITA_INCOERENTE
BEFORE UPDATE ON VENDITA
FOR EACH ROW
DECLARE
STATO_VENDITA_INCOERENTE EXCEPTION;
BEGIN
	IF :NEW.STATOORDINE = 'COMPLETATO' AND :NEW.DATACONSEGNA IS NULL THEN
		RAISE STATO_VENDITA_INCOERENTE;
	END IF;
EXCEPTION
	WHEN STATO_VENDITA_INCOERENTE THEN 
		RAISE_APPLICATION_ERROR(-20014,'Stato Vendita incoerente. Non è possibile procedere con la modifica.');
END;