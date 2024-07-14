CREATE OR REPLACE FUNCTION "C##DB_COMET".is_stato_vendita_ricevuto(
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE
) RETURN BOOLEAN IS
countVendita INTEGER;
BEGIN
	
    SELECT COUNT(*)
    INTO countVendita
    FROM Vendita 
    WHERE NumeroFattura = p_NumeroFattura
    AND StatoOrdine = 'RICEVUTO';

    RETURN countVendita > 0;
END is_stato_vendita_ricevuto;