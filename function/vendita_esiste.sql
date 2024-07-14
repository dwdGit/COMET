CREATE OR REPLACE FUNCTION "C##DB_COMET".vendita_esiste(
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE
) RETURN BOOLEAN IS
countVendita INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countVendita
    FROM Vendita 
    WHERE NumeroFattura = p_NumeroFattura;

    RETURN countVendita > 0;
END vendita_esiste;