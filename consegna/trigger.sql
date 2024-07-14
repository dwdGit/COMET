/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".CHECK_USER_INSERT_UPDATE_ACQUISTO
AFTER INSERT OR UPDATE ON ACQUISTO
FOR EACH ROW
DECLARE
COUNT_DIPENDENTI NUMBER;
OPERATION_NOT_ALLOWED EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO COUNT_DIPENDENTI
    FROM DIPENDENTE
    WHERE CODICEFISCALE = :NEW.CODICEFISCALEDIPENDENTE
    AND MANSIONE != 'Acquisti';
    IF(COUNT_DIPENDENTI > 0) THEN
        RAISE OPERATION_NOT_ALLOWED;
    END IF;

    EXCEPTION
    WHEN OPERATION_NOT_ALLOWED
    THEN RAISE_APPLICATION_ERROR(-20020,'Utente non abilitato. Operazione non consentita.');
END;

/*  */
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

/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".DATE_VENDITA_INCORENTI
BEFORE INSERT OR UPDATE ON VENDITA
FOR EACH ROW
DECLARE
DATE_NON_VALIDE EXCEPTION;
BEGIN
	IF(:NEW.DATACONSEGNA - :NEW.DATAORDINE) < 0 THEN
		RAISE DATE_NON_VALIDE;
	END IF;
EXCEPTION
	WHEN DATE_NON_VALIDE THEN 
		RAISE_APPLICATION_ERROR(-20010,'DATACONSEGNA antecedente a DATAACQUISTO. Non è possibile procedere con l''aggiornamento/la modifica.');
END;

/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".DIPENDENTE_ASSENTE
BEFORE INSERT OR UPDATE ON TURNO
FOR EACH ROW 
DECLARE 
	DIPENDENTE_ASSENTE EXCEPTION;
	count_assenze NUMBER;
BEGIN 
	SELECT COUNT(*)
	INTO count_assenze
	FROM ASSENZA a 
	WHERE (a.DATAINIZIOASSENZA BETWEEN :NEW.DATAINIZIOTURNO AND :NEW.DATAFINETURNO) OR
	(a.DATAFINEASSENZA BETWEEN :NEW.DATAINIZIOTURNO AND :NEW.DATAFINETURNO);

	IF count_assenze > 0 THEN 
		RAISE DIPENDENTE_ASSENTE;
	END IF;

EXCEPTION
	WHEN DIPENDENTE_ASSENTE THEN
		RAISE_APPLICATION_ERROR(-20019, 'Nel periodo indicato l''utente è assente. Non è possibile procedere con l''inserimento/modifica.');
END;

/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".formula_calendarizzata
BEFORE UPDATE ON FORMULA
FOR EACH ROW 
DECLARE 
	FORMULA_CALENDARIZZATA EXCEPTION;
BEGIN
	IF is_formula_calendarizzata(:OLD.CODICEFORMULA) THEN
		RAISE FORMULA_CALENDARIZZATA;
	END IF;

EXCEPTION
	WHEN FORMULA_CALENDARIZZATA THEN
		RAISE_APPLICATION_ERROR(-20015, 'La formula è calendarizzata nel futuro. Non è possibile procedere con l''aggiornamento.');
END;

/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".formula_materia_prima_calendarizzata
BEFORE UPDATE ON FORMULA_MATERIAPRIMA
FOR EACH ROW 
DECLARE 
	FORMULA_CALENDARIZZATA EXCEPTION;
BEGIN
	IF is_formula_calendarizzata(:OLD.CODICEFORMULA) THEN
		RAISE FORMULA_CALENDARIZZATA;
	END IF;

EXCEPTION
	WHEN FORMULA_CALENDARIZZATA THEN
		RAISE_APPLICATION_ERROR(-20015, 'La formula è calendarizzata nel futuro. Non è possibile procedere con l''aggiornamento.');
END;

CREATE OR REPLACE TRIGGER "C##DB_COMET".INSERIMENTO_MODIFICA_ACQUISTO_INCORENTE
AFTER INSERT OR UPDATE ON ACQUISTO

FOR EACH ROW
DECLARE
ACQUISTO_INCONSISTENT EXCEPTION;

BEGIN
    IF(:NEW.STATOORDINE = 'COMPLETATO' and :NEW.DATACONSEGNA is NULL) THEN
        RAISE ACQUISTO_INCONSISTENT;
    END IF;

    IF(:NEW.STATOORDINE = 'ANNULLATO' and :NEW.DATACONSEGNA is NOT NULL) THEN
        RAISE ACQUISTO_INCONSISTENT;
    END IF;

    IF(:NEW.STATOORDINE = 'IN_PREPARAZIONE' and :NEW.DATACONSEGNA is NOT NULL) THEN
        RAISE ACQUISTO_INCONSISTENT;
    END IF;

    IF(:NEW.STATOORDINE != 'RICEVUTO' or :NEW.DATACONSEGNA is NOT NULL) THEN
        RAISE ACQUISTO_INCONSISTENT;
    END IF;

    EXCEPTION
    WHEN ACQUISTO_INCONSISTENT
    THEN RAISE_APPLICATION_ERROR(-20012,'Stato dell''ordine di acquisto incoerente. Non è possibile procedere con l''operazione.');
END;

/*  */
CREATE OR REPLACE TRIGGER "C##DB_COMET".STATO_INSERIMENTO_VENDITA_INCOERENTE
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

/*  */
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

/*  */
CREATE OR REPLACE TRIGGER "C#DB_COMET".TURNI_SOVRAPPOSTI
BEFORE INSERT OR UPDATE ON TURNO
FOR EACH ROW
DECLARE
	TURNI_SOVRAPPOSTI EXCEPTION;
	count_turni NUMBER;
BEGIN
	SELECT COUNT(*)
	INTO count_turni 
	FROM TURNO t 
	WHERE 
	(
		(:NEW.DATAINIZIOTURNO BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO) OR 
		(:NEW.DATAFINETURNO BETWEEN t.DATAINIZIOTURNO AND t.DATAFINETURNO)
	) AND t.CFDIPENDENTE = :NEW.CFDIPENDENTE;

	IF count_turni > 0 THEN
		RAISE TURNI_SOVRAPPOSTI;
	END IF;
EXCEPTION
	WHEN TURNI_SOVRAPPOSTI THEN 
		RAISE_APPLICATION_ERROR(-20015,'L''utente ha già un turno programmato per l''intervallo di tempo indicato. Non è possibile procedere con l''inserimento/aggiornamento.');
END;