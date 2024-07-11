CREATE OR REPLACE FUNCTION is_formula_calendarizzata(
    p_CodiceFormula     IN Formula.CodiceFormula%TYPE
) RETURN BOOLEAN IS
countFormulaCalendarizzata INTEGER
BEGIN

    SELECT COUNT(*)
    INTO countFormulaCalendarizzata
    FROM CalendarioProduzione cp
    JOIN PRODOTTOFINITO pf ON cp.CODICEPRODOTTOFINITO = pf.CODICEPRODOTTO
    JOIN FORMULA f ON f.CODICEPRODOTTOFINITO = pf.CODICEPRODOTTO
    WHERE cp.DATAFINEPRODUZIONE > SYSDATE
    AND f.CODICEFORMULA = p_CodiceFormula;

    RETURN countFormulaCalendarizzata > 0;
END is_formula_calendarizzata;