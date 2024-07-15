CREATE USER C##Acquisto IDENTIFIED BY acquisto;
GRANT ALL ON C##DB_COMET.Azienda TO C##Acquisto;
GRANT ALL ON C##DB_COMET.Acquisto TO C##Acquisto;
GRANT ALL ON C##DB_COMET.DettaglioAcquisto TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.Azienda_MateriaPrima TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.CalendarioProduzione TO C##Acquisto;
GRANT ALL ON C##DB_COMET.MateriaPrima TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.ACQUISTO_MP TO C##Acquisto;
GRANT SELECT ON C##DB_COMET.INVENTARIO_MATERIE_PRIME TO C##Acquisto;
GRANT EXECUTE ON C##DB_COMET.GENERA_ACQUISTO TO C##Acquisto;
GRANT EXECUTE ON C##DB_COMET.MP_PREZZO_CONVENIENTE TO C##Acquisto;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_MP TO C##Acquisto;

CREATE USER C##Cliente IDENTIFIED BY cliente;
GRANT ALL ON C##DB_COMET.Vendita TO C##Cliente;

CREATE USER C##Fornitore IDENTIFIED BY fornitore;
GRANT ALL ON C##DB_COMET.Azienda_MateriaPrima TO C##Fornitore;

CREATE USER C##Produzione IDENTIFIED BY produzione;
GRANT SELECT ON C##DB_COMET.Turno TO C##Produzione;

CREATE USER C##Supervisore_Produzione IDENTIFIED BY supervisore_produzione;
GRANT SELECT ON C##DB_COMET.FORMULA TO C##Supervisore_Produzione;
GRANT SELECT ON C##DB_COMET.LINEA TO C##Supervisore_Produzione;
GRANT ALL ON C##DB_COMET.Turno TO C##Supervisore_Produzione;
GRANT ALL ON C##DB_COMET.CalendarioProduzione TO C##Supervisore_Produzione;
GRANT SELECT ON C##DB_COMET.Formula TO C##Supervisore_Produzione;
GRANT SELECT ON C##DB_COMET.INVENTARIO_PRODOTTI_FINITI TO C##Supervisore_Produzione;
GRANT EXECUTE ON C##DB_COMET.GENERA_PRODUZIONE TO C##Supervisore_Produzione;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_DISPONIBILITA_DIPENDENTE TO C##Supervisore_Produzione;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_DISPONIBILITA_LINEA TO C##Supervisore_Produzione;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_MP TO C##Supervisore_Produzione;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_PF TO C##Supervisore_Produzione;

CREATE USER C##Vendita IDENTIFIED BY vendita;
GRANT SELECT ON C##DB_COMET.Vendita TO C##Vendita;
GRANT ALL ON C##DB_COMET.ProdottoFinito TO C##Vendita;
GRANT EXECUTE ON C##DB_COMET.VERIFICA_PF TO C##Vendita;

GRANT ALL ON C##DB_COMET.Azienda TO C##Acquisto,
    C##Vendita;

GRANT CONNECT TO C##Acquisto, 
    C##Cliente, 
    C##DB_Comet, 
    C##Fornitore, 
    C##Supervisore_Produzione,
    C##Produzione,
    C##Vendita;

GRANT ALL ON C##DB_COMET.Assenza TO C##Acquisto,
    C##Supervisore_Produzione,
    C##Produzione,
    C##Vendita;

GRANT EXECUTE ON C##DB_COMET.calcola_id TO PUBLIC;