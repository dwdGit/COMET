create table CalendarioProduzione (
	CodiceCalendarioProduzione VARCHAR2(10) PRIMARY KEY,
	DataInizioProduzione DATE NOT NULL,
	DataFineProduzione DATE NOT NULL,
	CodiceLinea VARCHAR2(50) NOT NULL,
	CodiceFormula VARCHAR2(10) NOT NULL,
	CodiceFiscaleSupervisore CHAR(16) NOT NULL,
	
	FOREIGN KEY (CodiceLinea) REFERENCES Linea(CodiceLinea) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFormula) REFERENCES Formula(CodiceFormula) ON DELETE SET NULL,
	FOREIGN KEY (CodiceFiscaleSupervisore) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);