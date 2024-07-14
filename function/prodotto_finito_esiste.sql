CREATE OR REPLACE FUNCTION "C##DB_COMET".prodotto_finito_esiste(
    p_CodiceProdottoFinito     IN ProdottoFinito.CodiceProdottoFinito%TYPE
) RETURN BOOLEAN IS
countProdottoFinito INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countProdottoFinito
    FROM ProdottoFinito 
    WHERE CodiceProdottoFinito = p_CodiceProdottoFinito;

    RETURN countProdottoFinito > 0;
END prodotto_finito_esiste;