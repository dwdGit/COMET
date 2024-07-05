CREATE OR REPLACE PROCEDURE "C##COMET".ModificaFormulaMateriaPrima (
    p_OldCodiceFormula                IN Formula_MateriaPrima.CodiceFormula%TYPE, 
    p_CodiceFormula                   IN Formula_MateriaPrima.CodiceFormula%TYPE,
    p_OldCodiceProdottoMateriaPrima   IN Formula_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
    p_CodiceProdottoMateriaPrima      IN Formula_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
    p_QuantitaDaUtilizzare            IN Formula_MateriaPrima.QuantitaDaUtilizzare%TYPE,
    p_FaseDiUtilizzo                  IN Formula_MateriaPrima.FaseDiUtilizzo%TYPE
) IS
    calendarizzata INTEGER;
    EX_CALENDARIZZATA EXCEPTION;
BEGIN
    -- Per poter modificare la formula, questa non deve essere calendarizzata nel futuro
    IF calendarizzata > 0 THEN
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
END ModificaFormulaMateriaPrima;