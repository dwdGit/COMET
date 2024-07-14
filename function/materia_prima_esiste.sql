CREATE OR REPLACE FUNCTION "C##DB_COMET".materia_prima_esiste(
    p_CodiceMateriaPrima     IN MateriaPrima.CODICEMATERIAPRIMA%TYPE
) RETURN BOOLEAN IS
countMateriaPrima INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countMateriaPrima
    FROM MATERIAPRIMA 
    WHERE CODICEMATERIAPRIMA = p_CodiceMateriaPrima;

    RETURN countMateriaPrima > 0;
END materia_prima_esiste;