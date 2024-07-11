CREATE OR REPLACE FUNCTION "C##COMET".materia_prima_esiste(
    p_CodiceProdotto     IN MateriaPrima.CODICEPRODOTTO%TYPE
) RETURN BOOLEAN IS
countMateriaPrima INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countMateriaPrima
    FROM MATERIAPRIMA 
    WHERE CodiceProdotto = p_CodiceProdotto;

    RETURN countMateriaPrima > 0;
END materia_prima_esiste;