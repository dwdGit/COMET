CREATE OR REPLACE FUNCTION "C##COMET".is_formula_calendarizzata(
    p_CodiceFormula     IN Formula.CodiceFormula%TYPE
) RETURN BOOLEAN IS
countFormulaCalendarizzata INTEGER;
BEGIN

    SELECT COUNT(*)
    INTO countFormulaCalendarizzata
    FROM CalendarioProduzione cp
    WHERE cp.DATAFINEPRODUZIONE > SYSDATE
    AND cp.CODICEFORMULA = p_CodiceFormula;

    RETURN countFormulaCalendarizzata > 0;
END is_formula_calendarizzata;