CREATE OR REPLACE FUNCTION "C##COMET".prodotto_esiste(
    p_CodiceProdotto     IN ProdottoFinito.CodiceProdotto%TYPE
) RETURN BOOLEAN IS
countProdottoFinito INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countProdottoFinito
    FROM ProdottoFinito 
    WHERE CodiceProdotto = p_CodiceProdotto;

    RETURN countProdottoFinito > 0;
END prodotto_esiste;