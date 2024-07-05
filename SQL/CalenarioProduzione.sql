create table CalendarioProduzione (
	CodiceCalendarioProduzione VARCHAR2(10) PRIMARY KEY,
	DataInizioProduzione DATE,
	DataFineProduzione DATE,
	QuantitaDaProdurre INT,
	CodiceLinea VARCHAR2(50),
	CodiceProdottoFinito VARCHAR2(20),
	CodiceFiscaleSupervisore CHAR(16),
	
	FOREIGN KEY (CodiceLinea) REFERENCES Linea(CodiceLinea) ON DELETE SET NULL,
	FOREIGN KEY (CodiceProdottoFinito) REFERENCES ProdottoFinito(CodiceProdotto) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleSupervisore) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);