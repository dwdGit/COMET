CREATE OR REPLACE FUNCTION "C##DB_COMET".get_costo_unitario_prodotto_finito(
    p_CodiceProdottoFinito     IN ProdottoFinito.CodiceProdottoFinito%TYPE
) RETURN NUMBER IS
costoUnitarioProdotto NUMBER;
BEGIN
	
    SELECT CostoUnitario
    INTO costoUnitarioProdotto
    FROM ProdottoFinito
    WHERE CodiceProdottoFinito = p_CodiceProdottoFinito;

    RETURN costoUnitarioProdotto;
END get_costo_unitario_prodotto_finito;