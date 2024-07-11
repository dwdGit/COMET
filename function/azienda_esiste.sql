CREATE OR REPLACE FUNCTION "C##COMET".azienda_esiste(
    p_PartitaIva     IN Azienda.PartitaIva%TYPE
) RETURN BOOLEAN IS
countAzienda INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countAzienda
    FROM Azienda
    WHERE PartitaIva = p_PartitaIva;

    RETURN countAzienda > 0;
END azienda_esiste;