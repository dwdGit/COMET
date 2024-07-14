DROP TABLE "C##DB_COMET".Azienda;
DROP TABLE "C##DB_COMET".Linea;
DROP TABLE "C##DB_COMET".Dipendente;
DROP TABLE "C##DB_COMET".Turno;
DROP TABLE "C##DB_COMET".MateriaPrima;
DROP TABLE "C##DB_COMET".ProdottoFinito;
DROP TABLE "C##DB_COMET".Formula;
DROP TABLE "C##DB_COMET".Assenza;
DROP TABLE "C##DB_COMET".Formula_MateriaPrima;
DROP TABLE "C##DB_COMET".Acquisto;
DROP TABLE "C##DB_COMET".DettaglioAcquisto;
DROP TABLE "C##DB_COMET".Vendita;
DROP TABLE "C##DB_COMET".DettaglioVendita;
DROP TABLE "C##DB_COMET".Azienda_MateriaPrima;
DROP TABLE "C##DB_COMET".CalendarioProduzione;
DROP TABLE "C##DB_COMET".EventoProduzione;

create table "C##DB_COMET".Azienda (
	PartitaIva VARCHAR2(11) PRIMARY KEY,
	RagioneSociale VARCHAR2(30) NOT NULL,
	Email VARCHAR2(50),
	Telefono VARCHAR2(10),
	Indirizzo VARCHAR2(30),
	NumeroCivico VARCHAR(5),
	Citta VARCHAR2(30),
	CAP VARCHAR2(5),
	Nazione VARCHAR2(2),
	Provincia VARCHAR2(2)
);

CREATE TABLE "C##DB_COMET".Linea (
	CodiceLinea VARCHAR2(50) PRIMARY KEY,
	NomeLinea VARCHAR2(50) NOT NULL
);

create table "C##DB_COMET".Dipendente (
	CodiceFiscale CHAR(16) PRIMARY KEY,
	Nome VARCHAR2(10) NOT NULL,
	Cognome VARCHAR2(10) NOT NULL,
	DataNascita DATE NOT NULL,
	DataAssunzione DATE NOT NULL,
	Email VARCHAR2(50) NOT NULL,
	Telefono VARCHAR2(10) NOT NULL,
	Sesso ChAR(1) NOT NULL,
	Mansione VARCHAR2(10) NOT NULL,
	CFSupervisore CHAR(16),
	
	CONSTRAINT FK_SUPERVISIONA FOREIGN KEY (CFSupervisore) REFERENCES "C##DB_COMET".Dipendente(CodiceFiscale) ON DELETE SET NULL,
	CONSTRAINT CHECK_SESSO CHECK(Sesso IN ('M','F'))
);

create table "C##DB_COMET".Turno (
	CodiceTurno VARCHAR2(10) PRIMARY KEY,
	DataInizioTurno DATE NOT NULL,
	DataFineTurno DATE NOT NULL,
	CFDipendente CHAR(16) NOT NULL,
	
	CONSTRAINT FK_REFERENZIA FOREIGN KEY (CFDipendente) REFERENCES "C##DB_COMET".Dipendente(CodiceFiscale) ON DELETE SET NULL
);

create table "C##DB_COMET".MateriaPrima (
	CodiceMateriaPrima VARCHAR2(10) PRIMARY KEY,
	NomeProdotto VARCHAR2(50) NOT NULL UNIQUE,
	UnitaMisura VARCHAR2(2) NOT NULL,
	Vegano VARCHAR2(1) NOT NULL,
	
	CONSTRAINT CHECK_VEGANO_MP CHECK(Vegano IN ('Y','N')),
	CONSTRAINT CHECK_UNITA_MISURA_MP CHECK(UnitaMisura IN ('Kg','L'))
);

create table "C##DB_COMET".ProdottoFinito (
	CodiceProdottoFinito VARCHAR2(10) PRIMARY KEY,
	NomeProdotto VARCHAR2(50) NOT NULL,
	UnitaMisura VARCHAR2(5) NOT NULL,
	PesoUnitario NUMBER(4) NOT NULL,
	CostoUnitario NUMBER(4,2) NOT NULL,
	Vegano VARCHAR2(1) NOT NULL,
	
	CONSTRAINT CHECK_VEGANO_PF CHECK(Vegano IN ('Y','N'))
);

CREATE TABLE "C##DB_COMET".Formula (
	CodiceFormula VARCHAR2(10) PRIMARY KEY,
	DataAggiornamento DATE,
	ProduzionePrevista NUMBER(6) NOT NULL,
	TempoPreparazione NUMBER(10) NOT NULL,
	CodiceProdottoFinito VARCHAR2(10) NOT NULL,
	
	FOREIGN KEY (CodiceProdottoFinito) REFERENCES "C##DB_COMET".ProdottoFinito(CodiceProdottoFinito) ON DELETE SET NULL
);

CREATE TABLE "C##DB_COMET".Formula_MateriaPrima (
	CodiceFormula VARCHAR2(10),
	CodiceMateriaPrima VARCHAR2(10),
	QuantitaDaUtilizzare NUMBER(10,2) NOT NULL,
	FaseDiUtilizzo NUMBER(3) NOT NULL,

	CONSTRAINT PK_Formmula_MateriaPrima PRIMARY KEY(CodiceFormula, CodiceMateriaPrima),
	FOREIGN KEY (CodiceFormula) REFERENCES "C##DB_COMET".Formula(CodiceFormula) ON DELETE SET NULL,
	FOREIGN KEY (CodiceMateriaPrima) REFERENCES "C##DB_COMET".MateriaPrima(CodiceMateriaPrima) ON DELETE SET NULL
);

create table "C##DB_COMET".Assenza (
	CodiceAssenza VARCHAR2(10) PRIMARY KEY,
	DataInizioAssenza DATE,
	DataFineAssenza DATE,
	Causale VARCHAR2(32),
	Ferie boolean,
	Permessi boolean,
	ExFestivita boolean,
	CodiceFiscaleDipendente char(16) NOT NULL,
	
	FOREIGN KEY (CodiceFiscaleDipendente) REFERENCES "C##DB_COMET".Dipendente(CodiceFiscale) ON DELETE SET NULL
);

create table "C##DB_COMET".Acquisto (
	NumeroFattura VARCHAR2(10) PRIMARY KEY,
	DataOrdine DATE NOT NULL,
	DataConsegna DATE,
	StatoOrdine VARCHAR2(15) NOT NULL,
	PIVAAzienda VARCHAR2(11) NOT NULL,
	CodiceFiscaleDipendente CHAR(16) NOT NULL,

	FOREIGN KEY (PIVAAzienda) REFERENCES "C##DB_COMET".Azienda(PartitaIva) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleDipendente) REFERENCES "C##DB_COMET".Dipendente(CODICEFISCALE) ON DELETE SET NULL
);

create table "C##DB_COMET".DettaglioAcquisto (
	CodiceDettaglioAcquisto VARCHAR2(10) PRIMARY KEY,
	Quantita INT NOT NULL,
	CostoParziale DECIMAL(7,2) NOT NULL,
	CodiceMateriaPrima VARCHAR2(6) NOT NULL,
	NumeroFattura VARCHAR2(10) NOT NULL,

	FOREIGN KEY (CodiceMateriaPrima) REFERENCES "C##DB_COMET".MateriaPrima(CodiceMateriaPrima) ON DELETE SET NULL,
	FOREIGN KEY (NumeroFattura) REFERENCES "C##DB_COMET".Acquisto(NumeroFattura) ON DELETE SET NULL
);

create table "C##DB_COMET".Vendita (
	NumeroFattura VARCHAR(10) PRIMARY KEY,
	DataOrdine DATE NOT NULL,
	DataConsegna DATE,
	StatoOrdine VARCHAR(15) NOT NULL,
	PIVAAzienda VARCHAR(11) NOT NULL,
	
	FOREIGN KEY (PIVAAzienda) REFERENCES "C##DB_COMET".Azienda(PartitaIva) ON DELETE SET NULL,
	CONSTRAINT CHECK_STATO_ORDINE CHECK(StatoOrdine IN ('RICEVUTO', 'ANNULLATO', 'IN_PREPARAZIONE', 'COMPLETATO'))
);

create table "C##DB_COMET".DettaglioVendita (
	CodiceDettaglioVendita VARCHAR(10) PRIMARY KEY,
	Quantita Number(6) NOT NULL,
	Costo NUMBER(10,2) NOT NULL,
	CodiceProdottoFinito VARCHAR(10) NOT NULL,
	NumeroFattura VARCHAR(10) NOT NULL,

	FOREIGN KEY (CodiceProdottoFinito) REFERENCES "C##DB_COMET".ProdottoFinito(CodiceProdottoFinito) ON DELETE SET NULL,
	FOREIGN KEY (NumeroFattura) REFERENCES "C##DB_COMET".Vendita(NumeroFattura) ON DELETE SET NULL
);

create table "C##DB_COMET".Azienda_MateriaPrima (
	PIVAAzienda VARCHAR2(11),
	CodiceMateriaPrima VARCHAR2(10),
	QuantitaProdotto NUMBER(6) NOT NULL,
	QuantitaMinimaDaAcquistare NUMBER(6),
	PrezzoProdotto NUMBER(10,2) NOT NULL,
	
	CONSTRAINT PK_Azienda_MateriaPrima PRIMARY KEY(PIVAAzienda, CodiceMateriaPrima),
	FOREIGN KEY (PIVAAzienda) REFERENCES "C##DB_COMET".Azienda(PartitaIva) ON DELETE SET NULL,
	FOREIGN KEY (CodiceMateriaPrima) REFERENCES "C##DB_COMET".MateriaPrima(CodiceMateriaPrima) ON DELETE SET NULL
);

create table "C##DB_COMET".CalendarioProduzione (
	CodiceCalendarioProduzione VARCHAR2(10) PRIMARY KEY,
	DataInizioProduzione DATE NOT NULL,
	DataFineProduzione DATE NOT NULL,
	CodiceLinea VARCHAR2(50) NOT NULL,
	CodiceFormula VARCHAR2(10) NOT NULL,
	CodiceFiscaleSupervisore CHAR(16) NOT NULL,
	
	FOREIGN KEY (CodiceLinea) REFERENCES "C##DB_COMET".Linea(CodiceLinea) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFormula) REFERENCES "C##DB_COMET".Formula(CodiceFormula) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleSupervisore) REFERENCES "C##DB_COMET".Dipendente(CodiceFiscale) ON DELETE SET NULL
);

create table "C##DB_COMET".EventoProduzione (
	CodiceEventoProduzione VARCHAR2(10) PRIMARY KEY,
	NomeEvento VARCHAR2(50) NOT NULL,
	QuantitaProdotta INT,
	QuantitaScartata INT,
	DataInizioEvento DATE NOT NULL,
	DataFineEvento DATE NOT NULL,
	CodiceCalendarioProduzione VARCHAR2(10) NOT NULL,
	
	FOREIGN KEY (CodiceCalendarioProduzione) REFERENCES "C##DB_COMET".CalendarioProduzione(CodiceCalendarioProduzione) ON DELETE SET NULL
);
