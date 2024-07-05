CREATE OR REPLACE PROCEDURE InserisciFormulaMateriaPrima (
    p_CodiceFormula                IN Formula_MateriaPrima.CodiceFormula%TYPE,
    p_CodiceProdottoMateriaPrima   IN Formula_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
    p_QuantitaDaUtilizzare         IN Formula_MateriaPrima.QuantitaDaUtilizzare%TYPE,
    p_FaseDiUtilizzo               IN Formula_MateriaPrima.FaseDiUtilizzo%TYPE
) IS
BEGIN
    INSERT INTO Formula_MateriaPrima (
        CodiceFormula,
        CodiceProdottoMateriaPrima,
        QuantitaDaUtilizzare,
        FaseDiUtilizzo
    ) VALUES (
        p_CodiceFormula,
        p_CodiceProdottoMateriaPrima,
        p_QuantitaDaUtilizzare,
        p_FaseDiUtilizzo
    );
END InserisciFormulaMateriaPrima;