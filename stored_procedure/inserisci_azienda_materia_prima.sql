CREATE OR REPLACE PROCEDURE "C##COMET".InserisciAziendaMateriaPrima(
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

	INSERT INTO Azienda_MateriaPrima (
		PIVAAzienda,
		CodiceProdottoMateriaPrima,
		QuantitaProdotto,
		QuantitaMinimaDaAcquistare,
		PrezzoProdotto
	) values (
		p_PIVAAzienda,
		p_CodiceProdottoMateriaPrima,
		p_QuantitaProdotto,
		p_QuantitaMinimaDaAcquistare,
		p_PrezzoProdotto
	);

EXCEPTION
	WHEN AZIENDA_NON_ESISTE THEN
		DBMS_OUTPUT.PUT_LINE('La partita iva indicata non è associata ad alcuna azienda. Non è possibile inserire il record');
	WHEN MATERIA_PRIMA_NON_ESISTE THEN
		DBMS_OUTPUT.PUT_LINE('La materia prima indicata non esiste. Non è possibile inserire il record');
END InserisciAziendaMateriaPrima;