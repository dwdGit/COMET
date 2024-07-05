create table EventoProduzione (
	CodiceEventoProduzione VARCHAR2(10) PRIMARY KEY,
	NomeEvento VARCHAR2(50),
	QuantitaProdotta INT,
	QuantitaScartata INT,
	DataInizioEvento DATE,
	DataFineEvento DATE,
	CodiceCalendarioProduzione VARCHAR2(10),
	
	FOREIGN KEY (CodiceCalendarioProduzione) REFERENCES CalendarioProduzione(CodiceCalendarioProduzione) ON DELETE SET NULL
);