CREATE OR REPLACE PROCEDURE "C##COMET".ModificaAziendaMateriaPrima(
	p_PIVAAzienda						IN Azienda_MateriaPrima.PIVAAzienda%TYPE,
	p_CodiceProdottoMateriaPrima		IN Azienda_MateriaPrima.CodiceProdottoMateriaPrima%TYPE,
	p_QuantitaProdotto					IN Azienda_MateriaPrima.QuantitaProdotto%TYPE,
	p_QuantitaMinimaDaAcquistare		IN Azienda_MateriaPrima.QuantitaMinimaDaAcquistare%TYPE,
	p_PrezzoProdotto					IN Azienda_MateriaPrima.PrezzoProdotto%TYPE
)
IS
	AZIENDA_NON_ESISTE EXCEPTION;
	MATERIA_PRIMA_NON_ESISTE EXCEPTION;
BEGIN
	IF azienda_esiste(p_PIVAAzienda) = FALSE THEN
		RAISE AZIENDA_NON_ESISTE;
	END IF;

	IF materia_prima_esiste(p_CodiceProdottoMateriaPrima) = FALSE THEN
		RAISE MATERIA_PRIMA_NON_ESISTE;
	END IF;

	UPDATE Azienda_MateriaPrima
	SET QuantitaProdotto = p_QuantitaProdotto,
		QuantitaMinimaDaAcquistare = p_QuantitaMinimaDaAcquistare,
		PrezzoProdotto = p_PrezzoProdotto
	WHERE PIVAAzienda = p_PIVAAzienda AND
		CodiceProdottoMateriaPrima = p_CodiceProdottoMateriaPrima;
	
EXCEPTION
	WHEN AZIENDA_NON_ESISTE THEN
		DBMS_OUTPUT.PUT_LINE('La partita iva indicata non è associata ad alcuna azienda. Non è possibile inserire il record');
	WHEN MATERIA_PRIMA_NON_ESISTE THEN
		DBMS_OUTPUT.PUT_LINE('La materia prima indicata non esiste. Non è possibile inserire il record');
END ModificaAziendaMateriaPrima;