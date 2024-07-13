CREATE OR REPLACE PROCEDURE MP_PREZZO_CONVENIENTE(
	p_CodiceMateriaPrima IN MateriaPrima.CodiceProdotto%TYPE, 
	p_QuantitaDaAcquistare IN NUMBER
) IS 
	piva_azienda AZIENDA_MATERIAPRIMA.PIVAAZIENDA%TYPE;
	quantita_da_acquistare NUMBER;
	costo_totale NUMBER;
	unita_misura MATERIAPRIMA.UNITAMISURA%TYPE;
BEGIN 
	SELECT
	amp.PIVAAZIENDA, 
	CASE 
		WHEN imp.QUANTITADAACQUISTARE >= amp.QUANTITAMINIMADAACQUISTARE THEN
			CEIL((imp.QUANTITADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.QUANTITAPRODOTTO 
		ELSE 
			CEIL((amp.QUANTITAMINIMADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.QUANTITAPRODOTTO
	END AS QUANTITA_DA_ACQUISTARE,
	mp.UNITAMISURA,
	CASE 
		WHEN imp.QUANTITADAACQUISTARE >= amp.QUANTITAMINIMADAACQUISTARE THEN
			CEIL((imp.QUANTITADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO
		ELSE 
			CEIL((amp.QUANTITAMINIMADAACQUISTARE/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO
	END AS COSTO_TOTALE
	INTO piva_azienda, quantita_da_acquistare, unita_misura, costo_totale
	FROM AZIENDA_MATERIAPRIMA amp
	JOIN MATERIAPRIMA mp ON mp.CODICEPRODOTTO = amp.CODICEPRODOTTOMATERIAPRIMA 
	JOIN INVENTARIO_MATERIE_PRIME imp ON imp.CODICEPRODOTTO = mp.CODICEPRODOTTO 
	WHERE imp.QUANTITADAACQUISTARE > 0
	ORDER BY imp.CODICEPRODOTTO 
	FETCH FIRST 1 ROWS ONLY;

	DBMS_OUTPUT.PUT_LINE('E'' possibile acquistare la materia prima ' || p_CodiceMateriaPrima || ' in quantità ' || quantita_da_acquistare || unita_misura || ' dal fornitore ' || piva_azienda || ' al costo di €' || costo_totale);
END;