create table CalendarioProduzione (
	CodiceCalendarioProduzione VARCHAR2(10) PRIMARY KEY,
	DataInizioProduzione DATE NOT NULL,
	DataFineProduzione DATE NOT NULL,
	QuantitaDaProdurre INT NOT NULL,
	CodiceLinea VARCHAR2(50) NOT NULL,
	CodiceProdottoFinito VARCHAR2(20) NOT NULL,
	CodiceFiscaleSupervisore CHAR(16) NOT NULL,
	
	FOREIGN KEY (CodiceLinea) REFERENCES Linea(CodiceLinea) ON DELETE SET NULL,
	FOREIGN KEY (CodiceProdottoFinito) REFERENCES ProdottoFinito(CodiceProdotto) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleSupervisore) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);