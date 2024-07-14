create table "C##DB_COMET".EventoProduzione (
	CodiceEventoProduzione VARCHAR2(10) PRIMARY KEY,
	NomeEvento VARCHAR2(50) NOT NULL,
	QuantitaProdotta INT,
	QuantitaScartata INT,
	DataInizioEvento DATE NOT NULL,
	DataFineEvento DATE NOT NULL,
	CodiceCalendarioProduzione VARCHAR2(10) NOT NULL,
	
	FOREIGN KEY (CodiceCalendarioProduzione) REFERENCES CalendarioProduzione(CodiceCalendarioProduzione) ON DELETE SET NULL
);