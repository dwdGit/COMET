CREATE OR REPLACE PROCEDURE InserisciLinea (
    p_CodiceLinea IN LINEA.CodiceLinea%TYPE,
    p_NomeLinea   IN LINEA.NomeLinea%TYPE
) IS
BEGIN
    INSERT INTO LINEA (
        CodiceLinea,
        NomeLinea
    ) VALUES (
        p_CodiceLinea,
        p_NomeLinea
    );
END InserisciLinea;