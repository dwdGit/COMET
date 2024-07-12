CREATE OR REPLACE PROCEDURE "C##COMET".VERIFICA_PF(
	p_CodiceProdottoFinito IN ProdottoFinito.CodiceProdotto%TYPE
) IS 
	qta_da_produrre NUMBER;
BEGIN 
	SELECT ipf.QUANTITARIMANENTE
	INTO qta_da_produrre
	FROM INVENTARIO_PRODOTTI_FINITI ipf
	JOIN PRODOTTOFINITO pf ON pf.CODICEPRODOTTO = ipf.CODICEPRODOTTO
	WHERE pf.CODICEPRODOTTO = p_CodiceProdottoFinito;

	IF qta_da_produrre < 0 THEN 
		qta_da_produrre := qta_da_produrre * -1;
		DBMS_OUTPUT.PUT_LINE('E'' necessario produrre ' || qta_da_produrre || ' pezzi del prodotto finito ' || p_CodiceProdottoFinito);
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Si hanno a magazzino ' || qta_da_produrre || ' pezzi del prodotto finito ' || p_CodiceProdottoFinito);
	END IF;
END;