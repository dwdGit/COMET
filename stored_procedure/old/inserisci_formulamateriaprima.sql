CREATE OR REPLACE PROCEDURE InserisciFormulaMateriaPrima (
    p_CodiceFormula                IN Formula_MateriaPrima.CodiceFormula%TYPE,
    p_CodiceMateriaPrima           IN Formula_MateriaPrima.CodiceMateriaPrima%TYPE,
    p_QuantitaDaUtilizzare         IN Formula_MateriaPrima.QuantitaDaUtilizzare%TYPE,
    p_FaseDiUtilizzo               IN Formula_MateriaPrima.FaseDiUtilizzo%TYPE
) IS
BEGIN
    INSERT INTO Formula_MateriaPrima (
        CodiceFormula,
        CodiceMateriaPrima,
        QuantitaDaUtilizzare,
        FaseDiUtilizzo
    ) VALUES (
        p_CodiceFormula,
        p_CodiceMateriaPrima,
        p_QuantitaDaUtilizzare,
        p_FaseDiUtilizzo
    );
END InserisciFormulaMateriaPrima;