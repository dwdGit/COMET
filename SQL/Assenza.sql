create table "C##DB_COMET".Assenza (
	CodiceAssenza VARCHAR2(10) PRIMARY KEY,
	DataInizioAssenza DATE,
	DataFineAssenza DATE,
	Causale VARCHAR2(32),
	Ferie boolean,
	Permessi boolean,
	ExFestivita boolean,
	CodiceFiscaleDipendente char(16) NOT NULL,
	
	FOREIGN KEY (CodiceFiscaleDipendente) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);

insert into Assenza (CodiceAssenza, DataInizioAssenza, DataFineAssenza, Causale, Ferie, Permessi, ExFestivita, CodiceFiscaleDipendente) values
('ASS-1', TO_DATE('2024-06-01T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-01T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'mal di testa', true, false, false, 'RZZLSN95C24F839A'),
('ASS-2', TO_DATE('2024-06-03T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-03T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo cardiaco', false, true, false, 'GRCGRG93P64F839R'),
('ASS-3', TO_DATE('2024-06-02T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-06T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicologico-sociale', false, false, true, 'CSTNDR68S21F839D'),
('ASS-4', TO_DATE('2024-06-04T00:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-04T07:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo ostetrico', false, false, true, 'CSTNDR68S21F839D'),
('ASS-5', TO_DATE('2024-06-04T08:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-04T15:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'ferita', false, false, true, 'RZZGRT78R45F839F'),
('ASS-6', TO_DATE('2024-06-04T16:00:00Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-04T23:59:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'allergia', true, false, false, 'PLLNTN71A23G311W');
