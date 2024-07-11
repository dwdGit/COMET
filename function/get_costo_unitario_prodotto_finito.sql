CREATE OR REPLACE FUNCTION "C##COMET".get_costo_unitario_prodotto_finito(
    p_CodiceProdotto     IN ProdottoFinito.CodiceProdotto%TYPE
) RETURN NUMBER IS
costoUnitarioProdotto NUMBER;
BEGIN
	
    SELECT CostoUnitario
    INTO costoUnitarioProdotto
    FROM ProdottoFinito
    WHERE CodiceProdotto = p_CodiceProdotto;

    RETURN costoUnitarioProdotto;
END get_costo_unitario_prodotto_finito;