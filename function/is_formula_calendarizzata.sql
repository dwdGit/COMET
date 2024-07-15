CREATE OR REPLACE FUNCTION "C##DB_COMET".is_formula_calendarizzata(
    p_CodiceFormula     IN Formula.CodiceFormula%TYPE
) RETURN BOOLEAN IS
countFormulaCalendarizzata INTEGER;
BEGIN

    SELECT COUNT(*)
    INTO countFormulaCalendarizzata
    FROM CalendarioProduzione cp
    JOIN PRODOTTOFINITO p ON p.CODICEPRODOTTOFINITO = cp.CODICEPRODOTTOFINITO
    JOIN FORMULA f ON f.CODICEPRODOTTOFINITO = p.CODICEPRODOTTOFINITO
    WHERE cp.DATAFINEPRODUZIONE > SYSDATE
    AND f.CODICEFORMULA = p_CodiceFormula;

    RETURN countFormulaCalendarizzata > 0;
END is_formula_calendarizzata;