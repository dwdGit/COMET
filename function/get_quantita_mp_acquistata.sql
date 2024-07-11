CREATE OR REPLACE FUNCTION "C##COMET".get_quantita_mp_acquistata(
	p_CodiceProdotto			IN MateriaPrima.CODICEPRODOTTO%TYPE 
) RETURN NUMBER IS
	quantitaAcquistata NUMBER;
BEGIN
	SELECT SUM(da.QUANTITA)
	INTO quantitaAcquistata
	FROM ACQUISTO a
	JOIN DETTAGLIOACQUISTO da ON da.NUMEROFATTURA = a.NUMEROFATTURA 
	WHERE a.STATOORDINE = 'COMPLETATO' AND da.CODICEPRODOTTO = p_CodiceProdotto
	GROUP BY da.CODICEPRODOTTO;
	
	RETURN quantitaAcquistata; 
END get_quantita_mp_acquistata;