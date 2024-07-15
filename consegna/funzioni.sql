CREATE OR REPLACE FUNCTION "C##DB_COMET".azienda_esiste(
    p_PartitaIva     IN Azienda.PartitaIva%TYPE
) RETURN BOOLEAN IS
countAzienda INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countAzienda
    FROM "C##DB_COMET".Azienda
    WHERE PartitaIva = p_PartitaIva;

    RETURN countAzienda > 0;
END azienda_esiste;

CREATE OR REPLACE FUNCTION "C##DB_COMET".calcola_id(
    p_Tabella                 IN VARCHAR2,
    p_PrefissoDefault        IN VARCHAR2
)
RETURN VARCHAR2
IS
    query VARCHAR2(500);
    chiave_primaria VARCHAR2(50);
    nuova_chiave VARCHAR2(50);
BEGIN
    
    SELECT cols.column_name
    INTO chiave_primaria
    FROM all_constraints cons, all_cons_columns cols
    WHERE cols.table_name = UPPER(p_Tabella)
    AND cons.constraint_type = 'P'
    AND cons.constraint_name = cols.constraint_name
    AND cons.owner = cols.owner;
    
    query := 'SELECT MAX(tabella.prefisso) || ''-'' || (MAX(tabella.contatore) + 1) ';
    query := query || 'FROM ( ';
    query := query || 'SELECT ';
    query := query || 'REGEXP_SUBSTR(' || chiave_primaria || ', ''[^-]+'', 1, 1) AS prefisso, ';
    query := query || 'TO_NUMBER(REGEXP_SUBSTR(' || chiave_primaria ||', ''[^-]+'', 1, 2)) AS contatore ';
    query := query || 'FROM "C##DB_COMET".' || UPPER(p_Tabella) || ' ';
    query := query || ') tabella';

    EXECUTE IMMEDIATE query INTO nuova_chiave;    

    IF nuova_chiave = '-' THEN     
        nuova_chiave := UPPER(p_PrefissoDefault) || '-' || '1';
    END IF; 
    
    RETURN nuova_chiave;
END;

CREATE OR REPLACE FUNCTION "C##DB_COMET".get_costo_unitario_prodotto_finito(
    p_CodiceProdottoFinito     IN ProdottoFinito.CodiceProdottoFinito%TYPE
) RETURN NUMBER IS
costoUnitarioProdotto NUMBER;
BEGIN
	
    SELECT CostoUnitario
    INTO costoUnitarioProdotto
    FROM "C##DB_COMET".ProdottoFinito
    WHERE CodiceProdottoFinito = p_CodiceProdottoFinito;

    RETURN costoUnitarioProdotto;
END get_costo_unitario_prodotto_finito;

CREATE OR REPLACE FUNCTION "C##DB_COMET".get_quantita_mp_acquistata(
	p_CodiceMateriaPrima			IN MateriaPrima.CODICEMATERIAPRIMA%TYPE 
) RETURN NUMBER IS
	quantitaAcquistata NUMBER;
BEGIN
	SELECT SUM(da.QUANTITA)
	INTO quantitaAcquistata
	FROM "C##DB_COMET".ACQUISTO a
	JOIN "C##DB_COMET".DETTAGLIOACQUISTO da ON da.NUMEROFATTURA = a.NUMEROFATTURA 
	WHERE a.STATOORDINE = 'COMPLETATO' AND da.CODICEMATERIAPRIMA = p_CodiceMateriaPrima
	GROUP BY da.CODICEMATERIAPRIMA;
	
	RETURN quantitaAcquistata; 
END get_quantita_mp_acquistata;

CREATE OR REPLACE FUNCTION "C##DB_COMET".is_formula_calendarizzata(
    p_CodiceFormula     IN Formula.CodiceFormula%TYPE
) RETURN BOOLEAN IS
countFormulaCalendarizzata INTEGER;
BEGIN

    SELECT COUNT(*)
    INTO countFormulaCalendarizzata
    FROM "C##DB_COMET".CalendarioProduzione cp
    JOIN "C##DB_COMET".PRODOTTOFINITO p ON p.CODICEPRODOTTOFINITO = cp.CODICEPRODOTTOFINITO
    JOIN "C##DB_COMET".FORMULA f ON f.CODICEPRODOTTOFINITO = p.CODICEPRODOTTOFINITO
    WHERE cp.DATAFINEPRODUZIONE > SYSDATE
    AND f.CODICEFORMULA = p_CodiceFormula;

    RETURN countFormulaCalendarizzata > 0;
END is_formula_calendarizzata;

CREATE OR REPLACE FUNCTION "C##DB_COMET".is_stato_vendita_ricevuto(
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE
) RETURN BOOLEAN IS
countVendita INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countVendita
    FROM "C##DB_COMET".Vendita 
    WHERE NumeroFattura = p_NumeroFattura
    AND StatoOrdine = 'RICEVUTO';

    RETURN countVendita > 0;
END is_stato_vendita_ricevuto;

CREATE OR REPLACE FUNCTION "C##DB_COMET".materia_prima_esiste(
    p_CodiceMateriaPrima     IN MateriaPrima.CODICEMATERIAPRIMA%TYPE
) RETURN BOOLEAN IS
countMateriaPrima INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countMateriaPrima
    FROM "C##DB_COMET".MATERIAPRIMA 
    WHERE CODICEMATERIAPRIMA = p_CodiceMateriaPrima;

    RETURN countMateriaPrima > 0;
END materia_prima_esiste;

CREATE OR REPLACE FUNCTION "C##DB_COMET".prodotto_finito_esiste(
    p_CodiceProdottoFinito     IN ProdottoFinito.CodiceProdottoFinito%TYPE
) RETURN BOOLEAN IS
countProdottoFinito INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countProdottoFinito
    FROM "C##DB_COMET".ProdottoFinito 
    WHERE CodiceProdottoFinito = p_CodiceProdottoFinito;

    RETURN countProdottoFinito > 0;
END prodotto_finito_esiste;

CREATE OR REPLACE FUNCTION "C##DB_COMET".vendita_esiste(
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE
) RETURN BOOLEAN IS
countVendita INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countVendita
    FROM "C##DB_COMET".Vendita 
    WHERE NumeroFattura = p_NumeroFattura;

    RETURN countVendita > 0;
END vendita_esiste;