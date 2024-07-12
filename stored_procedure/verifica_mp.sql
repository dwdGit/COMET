CREATE OR REPLACE PROCEDURE "C##COMET".VERIFICA_MP(
	p_CodiceMateriaPrima IN MateriaPrima.CodiceProdotto%TYPE
) IS 
	qta_da_acquistare NUMBER;
	unita_misura MateriaPrima.UnitaMisura%TYPE;
BEGIN 
	SELECT imp.QUANTITADAACQUISTARE, m.UNITAMISURA 
	INTO qta_da_acquistare, unita_misura
	FROM INVENTARIO_MATERIE_PRIME imp
	JOIN MATERIAPRIMA m ON m.CODICEPRODOTTO = imp.CODICEPRODOTTO
	WHERE imp.CODICEPRODOTTO = p_CodiceMateriaPrima;

	DBMS_OUTPUT.PUT_LINE('E'' necessario acquistare ' || qta_da_acquistare || unita_misura ||' della materia prima ' || p_CodiceMateriaPrima);
END;