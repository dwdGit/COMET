CREATE OR REPLACE PROCEDURE ModificaDettaglioVendita (
    p_CodiceDettaglioVendita        IN DettaglioVendita.CodiceDettaglioVendita%TYPE,
    p_Quantita                      IN DettaglioVendita.Quantita%TYPE,
    p_CostoUnitario                 IN DettaglioVendita.CostoUnitario%TYPE,
    p_CodiceProdotto                IN DettaglioVendita.CodiceProdotto%TYPE,
    p_NumeroFattura                IN DettaglioVendita.NumeroFattura%TYPE
) IS
    EX_VENDITA_NON_ESISTE EXCEPTION;
    EX_PRODOTTO_NON_ESISTE EXCEPTION;
    EX_STATO_ORDINE_NON_RICEVUTO EXCEPTION;
BEGIN

    IF vendita_esiste(p_NumeroFattura) = FALSE THEN
        RAISE EX_VENDITA_NON_ESISTE;
    END IF;

    IF is_stato_vendita_ricevuto(p_NumeroFattura) = FALSE THEN
        RAISE EX_STATO_ORDINE_NON_RICEVUTO;
    END IF;

    IF prodotto_esiste(p_CodiceProdotto) = FALSE THEN
        RAISE EX_PRODOTTO_NON_ESISTE;
    END IF;

    INSERT INTO DettaglioVendita (
        CodiceDettaglioVendita,
        Quantita,
        CostoUnitario,
        CodiceProdotto,
        NumeroFattura
    ) VALUES (
        p_CodiceDettaglioVendita,
        p_Quantita,
        p_CostoUnitario,
        p_CodiceProdotto,
        p_NumeroFattura
    );

EXCEPTION
    WHEN EX_VENDITA_NON_ESISTE THEN
        DBMS_OUTPUT.PUT_LINE('Il numero di fattura indicato non è associato ad alcuna vendita. Non è possibile inserire il dettaglio vendita');
    WHEN EX_PRODOTTO_NON_ESISTE THEN
        DBMS_OUTPUT.PUT_LINE('Il prodotto indicato indicato non esiste. Non è possibile inserire il dettaglio vendita');
    WHEN EX_STATO_ORDINE_NON_RICEVUTO THEN
        DBMS_OUTPUT.PUT_LINE('L''ordine è in lavorazione e non è possibile modificare il suo dettaglio vendita.');
END ModificaDettaglioVendita;