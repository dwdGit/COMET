create table "C##DB_COMET".EventoProduzione (
	CodiceEventoProduzione VARCHAR2(10) PRIMARY KEY,
	NomeEvento VARCHAR2(50) NOT NULL,
	QuantitaProdotta NUMBER(10,2),
	QuantitaScartata NUMBER(10,2),
	DataInizioEvento DATE NOT NULL,
	DataFineEvento DATE NOT NULL,
	CodiceCalendarioProduzione VARCHAR2(10) NOT NULL,
	
	FOREIGN KEY (CodiceCalendarioProduzione) REFERENCES CalendarioProduzione(CodiceCalendarioProduzione) ON DELETE SET NULL
);

INSERT INTO "C##DB_COMET".EventoProduzione (CodiceEventoProduzione,NomeEvento,QuantitaProdotta,QuantitaScartata,DataInizioEvento,DataFineEvento,CodiceCalendarioProduzione) VALUES
('EP-1','Caricamento della linea',0,0,TO_DATE('2024-06-01T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T02:31:0Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-1'),
('EP-2','Lavorazione',0,0,TO_DATE('2024-06-01T02:31:0Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T06:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-1'),
('EP-3','Puliza della linea',0,0,TO_DATE('2024-06-01T06:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-01T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-1'),
('EP-4','Lavorazione',0,0,TO_DATE('2024-06-03T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-9'),
('EP-5','Lavorazione',0,0,TO_DATE('2024-06-03T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-9'),
('EP-6','Confezionamento',10000,0,TO_DATE('2024-06-03T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),TO_DATE('2024-06-03T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'),'CP-7'),
