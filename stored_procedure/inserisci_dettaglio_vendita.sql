CREATE OR REPLACE PROCEDURE InserisciDettaglioVendita (
    p_CodiceDettaglioVendita        IN DettaglioVendita.CodiceDettaglioVendita%TYPE,
    p_Quantita                      IN DettaglioVendita.Quantita%TYPE,
    p_CodiceProdotto                IN DettaglioVendita.CodiceProdotto%TYPE,
    p_NumeroFattura                IN DettaglioVendita.NumeroFattura%TYPE
) IS
    costoUnitarioProdotto NUMBER;
    EX_VENDITA_NON_ESISTE EXCEPTION;
    EX_PRODOTTO_NON_ESISTE EXCEPTION;
BEGIN

    IF vendita_esiste(p_NumeroFattura) = FALSE THEN
        RAISE EX_VENDITA_NON_ESISTE;
    END IF;

    IF prodotto_esiste(p_CodiceProdotto) = FALSE THEN
        RAISE EX_PRODOTTO_NON_ESISTE;
    END IF;

    SELECT get_costo_unitario_prodotto_finito(p_CodiceProdotto)
    INTO costoUnitarioProdotto
    FROM dual;

    INSERT INTO DettaglioVendita (
        CodiceDettaglioVendita,
        Quantita,
        CostoUnitario,
        CodiceProdotto,
        NumeroFattura
    ) VALUES (
        p_CodiceDettaglioVendita,
        p_Quantita,
        costoUnitarioProdotto * p_Quantita,
        p_CodiceProdotto,
        p_NumeroFattura
    );

EXCEPTION
    WHEN EX_VENDITA_NON_ESISTE THEN
        DBMS_OUTPUT.PUT_LINE('Il numero di fattura indicato non è associato ad alcuna vendita. Non è possibile inserire il dettaglio vendita');
    WHEN EX_PRODOTTO_NON_ESISTE THEN
        DBMS_OUTPUT.PUT_LINE('Il prodotto indicato indicato non esiste. Non è possibile inserire il dettaglio vendita');
END InserisciDettaglioVendita;