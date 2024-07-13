CREATE OR REPLACE PROCEDURE MP_PREZZO_CONVENIENTE(
	p_CodiceMateriaPrima IN MateriaPrima.CodiceProdotto%TYPE, 
	p_QuantitaDaAcquistare IN NUMBER
) IS 
	piva_azienda AZIENDA_MATERIAPRIMA.PIVAAZIENDA%TYPE;
	quantita_da_acquistare NUMBER;
	costo_mp_singola NUMBER;
	costo_totale NUMBER;
	unita_misura MATERIAPRIMA.UNITAMISURA%TYPE;
BEGIN 
	SELECT 
		amp.PIVAAZIENDA, 
		CEIL((p_QuantitaDaAcquistare/amp.QUANTITAPRODOTTO)) * amp.QUANTITAPRODOTTO AS QUANTITA_DA_ACQUISTARE,
		mp.UNITAMISURA,
		amp.PREZZOPRODOTTO AS COSTO_SINGOLO,
		(CEIL((p_QuantitaDaAcquistare/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO) AS COSTO_TOTALE
	INTO piva_azienda, quantita_da_acquistare, unita_misura, costo_mp_singola, costo_totale
	FROM AZIENDA_MATERIAPRIMA amp
	JOIN MATERIAPRIMA mp ON mp.CODICEPRODOTTO = amp.CODICEPRODOTTOMATERIAPRIMA 
	WHERE mp.CODICEPRODOTTO = p_CodiceMateriaPrima
	ORDER BY (CEIL((p_QuantitaDaAcquistare/amp.QUANTITAPRODOTTO)) * amp.PREZZOPRODOTTO)
	FETCH FIRST 1 ROWS ONLY;

	DBMS_OUTPUT.PUT_LINE('E'' possibile acquistare la materia prima ' || p_CodiceMateriaPrima || ' in quantità ' || quantita_da_acquistare || unita_misura || ' dal fornitore ' || piva_azienda || ' al costo di €' || costo_totale);
END;