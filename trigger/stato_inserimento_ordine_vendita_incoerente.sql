CREATE OR REPLACE TRIGGER STATO_INSERIMENTO_VENDITA_INCOERENTE
BEFORE INSERT ON VENDITA
FOR EACH ROW
DECLARE
STATO_VENDITA_INCOERENTE EXCEPTION;
BEGIN
	IF :NEW.STATOORDINE = 'COMPLETATO' AND :NEW.DATACONSEGNA IS NULL THEN
		RAISE STATO_VENDITA_INCOERENTE;
	END IF;

	IF :NEW.STATOORDINE != 'RICEVUTO' OR :NEW.DATACONSEGNA IS NOT NULL THEN
		RAISE STATO_VENDITA_INCOERENTE;
	END IF;
EXCEPTION
	WHEN STATO_VENDITA_INCOERENTE THEN 
		RAISE_APPLICATION_ERROR(-20013,'Stato Vendita incoerente. Non è possibile procedere con l''inserimento.');
END;