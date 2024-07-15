CREATE OR REPLACE PROCEDURE "C##DB_COMET".VERIFICA_PF(
	p_CodiceMateriaPrima IN MateriaPrima.CODICEMATERIAPRIMA%TYPE
) IS 
	qta_da_acquistare NUMBER;
	unita_misura MateriaPrima.UnitaMisura%TYPE;
BEGIN 
	SELECT imp.QUANTITADAACQUISTARE, m.UNITAMISURA 
	INTO qta_da_acquistare, unita_misura
	FROM INVENTARIO_MATERIE_PRIME imp
	JOIN MATERIAPRIMA m ON m.CODICEMATERIAPRIMA = imp.CODICEMATERIAPRIMA
	WHERE imp.CODICEMATERIAPRIMA = p_CodiceMateriaPrima;

	DBMS_OUTPUT.PUT_LINE('E'' necessario acquistare ' || qta_da_acquistare || unita_misura ||' della materia prima ' || p_CodiceMateriaPrima);
END;