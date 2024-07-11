CREATE OR REPLACE PROCEDURE "C##COMET".ModificaFormulaMateriaPrima (
    p_OldCodiceFormula                IN Formula_MateriaPrima.CodiceFormula%TYPE, 
    p_CodiceFormula                   IN Formula_MateriaPrima.CodiceFormula%TYPE,
    p_OldCodiceProdottoMateriaPrima   IN Formula_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
    p_CodiceProdottoMateriaPrima      IN Formula_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
    p_QuantitaDaUtilizzare            IN Formula_MateriaPrima.QuantitaDaUtilizzare%TYPE,
    p_FaseDiUtilizzo                  IN Formula_MateriaPrima.FaseDiUtilizzo%TYPE
) IS
    EX_PRODOTTO_NON_ESISTE EXCEPTION;
    EX_CALENDARIZZATA EXCEPTION;
    calendarizzata INTEGER;
BEGIN
    -- Per poter modificare la formula, bisogna indicare una materia prima esistente
    IF materia_prima_esiste(p_CodiceProdottoMateriaPrima) = FALSE THEN
        RAISE EX_PRODOTTO_NON_ESISTE;
    END IF;

    -- Per poter modificare la formula, questa non deve essere calendarizzata nel futuro
    IF is_formula_calendarizzata(p_OldCodiceFormula) THEN
        RAISE EX_CALENDARIZZATA;
    END IF;

    UPDATE Formula_MateriaPrima
    SET
        CodiceFormula = p_CodiceFormula,
        CodiceProdottoMateriaPrima = p_CodiceProdottoMateriaPrima,
        QuantitaDaUtilizzare = p_QuantitaDaUtilizzare,
        FaseDiUtilizzo = p_FaseDiUtilizzo
    WHERE
        CodiceFormula = p_OldCodiceFormula
        AND CodiceProdottoMateriaPrima = p_OldCodiceProdottoMateriaPrima;

EXCEPTION
    WHEN EX_CALENDARIZZATA THEN
        DBMS_OUTPUT.PUT_LINE('La formula è calendarizzata nel futuro. Non è possibile eseguire l''aggiornamento.');
    WHEN EX_PRODOTTO_NON_ESISTE THEN
        DBMS_OUTPUT.PUT_LINE('La materia prima indicata non esiste. Non è possibile eseguire l''aggiornamento.');
END ModificaFormulaMateriaPrima;