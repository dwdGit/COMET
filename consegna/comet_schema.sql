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
	Nome VARCHAR2(25) NOT NULL,
	Cognome VARCHAR2(25) NOT NULL,
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
	NomeProdotto VARCHAR2(50) NOT NULL UNIQUE,
	UnitaMisura VARCHAR2(2) NOT NULL,
	PesoUnitario NUMBER(10,2) NOT NULL,
	CostoUnitario NUMBER(10,2) NOT NULL,
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

	CONSTRAINT PK_Formula_MateriaPrima PRIMARY KEY(CodiceFormula, CodiceMateriaPrima),
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
	FOREIGN KEY (CodiceFiscaleDipendente) REFERENCES "C##DB_COMET".Dipendente(CODICEFISCALE) ON DELETE SET NULL,
	CONSTRAINT CHECK_STATO_ORDINE_ACQUISTO CHECK(StatoOrdine IN ('RICEVUTO', 'ANNULLATO', 'IN_PREPARAZIONE', 'COMPLETATO'))
);

create table "C##DB_COMET".DettaglioAcquisto (
	CodiceDettaglioAcquisto VARCHAR2(10) PRIMARY KEY,
	Quantita NUMBER(6) NOT NULL,
	CostoParziale NUMBER(10,2) NOT NULL,
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
	CONSTRAINT CHECK_STATO_ORDINE_VENDITA CHECK(StatoOrdine IN ('RICEVUTO', 'ANNULLATO', 'IN_PREPARAZIONE', 'COMPLETATO'))
);

create table "C##DB_COMET".DettaglioVendita (
	CodiceDettaglioVendita VARCHAR(10) PRIMARY KEY,
	Quantita Number(6) NOT NULL,
	CostoParziale NUMBER(10,2) NOT NULL,
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
	CodiceProdottoFinito VARCHAR2(10) NOT NULL,
	CodiceFiscaleSupervisore CHAR(16) NOT NULL,
	
	FOREIGN KEY (CodiceLinea) REFERENCES Linea(CodiceLinea) ON DELETE SET NULL,
	FOREIGN KEY (CodiceProdottoFinito) REFERENCES ProdottoFinito(CodiceProdottoFinito) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleSupervisore) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);
