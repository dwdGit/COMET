CREATE OR REPLACE PROCEDURE AnnullaVendita (
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE
) IS
    EX_STATO_ORDINE_NON_RICEVUTO EXCEPTION;
BEGIN
    IF is_stato_vendita_ricevuto(p_NumeroFattura) = FALSE THEN
        RAISE EX_STATO_ORDINE_NON_RICEVUTO;
    END IF;

    UPDATE Vendita
    SET StatoOrdine = 'ANNULLATO'
    WHERE NumeroFattura = p_NumeroFattura

EXCEPTIONS
    WHEN EX_STATO_ORDINE_NON_RICEVUTO THEN
        DBMS_OUTPUT.PUT_LINE('L''ordine è in lavorazione e non è possibile annullarlo.');
END AnnullaVendita;