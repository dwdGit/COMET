CREATE USER C##DB_Comet IDENTIFIED BY admin;
GRANT ALL PRIVILEGES TO C##DB_Comet;

CREATE USER C##Acquisto IDENTIFIED BY acquisto;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Azienda TO C##Acquisto;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Acquisto TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.Azienda_MateriaPrima TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.CalendarioProduzione TO C##Acquisto;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.MateriaPrima TO C##Acquisto;

CREATE USER C##Cliente IDENTIFIED BY cliente;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Vendita TO C##Cliente;

CREATE USER C##Fornitore IDENTIFIED BY fornitore;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Azienda_MateriaPrima TO C##Fornitore;

CREATE USER C##Produzione IDENTIFIED BY produzione;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.EventoProduzione TO C##Produzione;
GRANT SELECT ON C##DB_COMET.Turno TO C##Produzione;

CREATE USER C##Supervisore_Produzione IDENTIFIED BY supervisore_produzione;
GRANT SELECT ON C##DB_COMET.FORMULA TO C##Supervisore_Produzione;
GRANT SELECT ON C##DB_COMET.LINEA TO C##Supervisore_Produzione;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Turno TO C##Supervisore_Produzione;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.CalendarioProduzione TO C##Supervisore_Produzione;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.EventoProduzione TO C##Supervisore_Produzione;
GRANT SELECT ON C##DB_COMET.Formula TO C##Supervisore_Produzione;

CREATE USER C##Vendita IDENTIFIED BY vendita;
GRANT SELECT ON C##DB_COMET.Vendita TO C##Vendita;
GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.ProdottoFinito TO C##Vendita;

GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Azienda TO C##Acquisto,
    C##Vendita;

GRANT CONNECT TO C##Acquisto, 
    C##Cliente, 
    C##DB_Comet, 
    C##Fornitore, 
    C##Supervisore_Produzione,
    C##Produzione,
    C##Vendita;

GRANT SELECT, INSERT, UPDATE ON C##DB_COMET.Assenza TO C##Acquisto,
    C##Supervisore_Produzione,
    C##Produzione,
    C##Vendita;

GRANT EXECUTE ON calcola_id TO ALL;