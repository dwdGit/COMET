CREATE OR REPLACE PROCEDURE "C##DB_COMET".InserisciDipendente (
    p_CodiceFiscale   Dipendente.CodiceFiscale%TYPE,
    p_Nome            Dipendente.Nome%TYPE,
    p_Cognome         Dipendente.Cognome%TYPE,
    p_DataNascita     Dipendente.DataNascita%TYPE,
    p_DataAssunzione  Dipendente.DataAssunzione%TYPE,
    p_Email           Dipendente.Email%TYPE,
    p_Telefono        Dipendente.Telefono%TYPE,
    p_Sesso           Dipendente.Sesso%TYPE,
    p_Mansione        Dipendente.Mansione%TYPE,
    p_CFSupervisore   Dipendente.CFSupervisore%TYPE
) IS
BEGIN
    INSERT INTO Dipendente (
        CodiceFiscale,
        Nome,
        Cognome,
        DataNascita,
        DataAssunzione,
        Email,
        Telefono,
        Sesso,
        Mansione,
        CFSupervisore
    ) VALUES (
        p_CodiceFiscale,
        p_Nome,
        p_Cognome,
        p_DataNascita,
        p_DataAssunzione,
        p_Email,
        p_Telefono,
        p_Sesso,
        p_Mansione,
        p_CFSupervisore
    );
END InserisciDipendente;