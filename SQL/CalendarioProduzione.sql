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

INSERT INTO CALENDARIOPRODUZIONE (CODICECALENDARIOPRODUZIONE,DATAINIZIOPRODUZIONE,DATAFINEPRODUZIONE,CODICELINEA,CODICEPRODOTTOFINITO,CODICEFISCALESUPERVISORE) VALUES
('CP-1',TO_DATE('2024-06-01T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-1','PF-3','CRSFNC01B42F839Q'),
('CP-2',TO_DATE('2024-06-01T08:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T15:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-2','PF-3','RZZGRL06B19F839C'),
('CP-3',TO_DATE('2024-06-01T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-1','PF-2','MRNLCU01S22F839E'),
('CP-4',TO_DATE('2024-06-02T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-02T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-1','PF-4','PLLCRN90T71G311T'),
('CP-5',TO_DATE('2024-06-02T08:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-02T15:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-1','PF-1','CRSFNC01B42F839Q'),
('CP-6',TO_DATE('2024-06-02T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-02T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-2','PF-4','RZZGRL06B19F839C'),
('CP-7',TO_DATE('2024-06-03T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-3','PF-3','MRNLCU01S22F839E'),
('CP-8',TO_DATE('2024-06-03T08:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T15:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-2','PF-1','PLLCRN90T71G311T'),
('CP-9',TO_DATE('2024-06-03T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-2','PF-2','CRSFNC01B42F839Q'),
('CP-10',TO_DATE('2024-06-04T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-04T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-3','PF-2','RZZGRL06B19F839C'),
('CP-11',TO_DATE('2024-06-04T08:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-04T15:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-3','PF-1','MRNLCU01S22F839E'),
('CP-12',TO_DATE('2024-06-04T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-04T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'L-3','PF-4','PLLCRN90T71G311T');
