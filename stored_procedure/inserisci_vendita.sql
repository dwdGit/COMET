CREATE OR REPLACE PROCEDURE InserisciVendita (
    p_NumeroFattura     IN Vendita.NumeroFattura%TYPE,
    p_DataOrdine        IN Vendita.DataOrdine%TYPE,
--    p_DataConsegna      IN Vendita.DataConsegna%TYPE, va inserita dal reparto vendita
--    p_StatoOrdine       IN Vendita.StatoOrdine%TYPE, di default è  RICEVUTO, viene aggiornato in seguito dal reparto vendita
    p_PIVAAzienda         IN Vendita.PIVAAzienda%TYPE
) IS
BEGIN
    INSERT INTO Vendita (
        NumeroFattura,
        DataOrdine,
        StatoOrdine,
        PIVAAzienda
    ) VALUES (
        p_NumeroFattura,
        p_DataOrdine,
        'RICEVUTO',
        p_PIVAAzienda
    );
END InserisciVendita;