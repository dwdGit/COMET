CREATE TABLE Formula (
	CodiceFormula VARCHAR2(10) PRIMARY KEY,
	DataAggiornamento DATE,
	ProduzionePrevista NUMBER(5) NOT NULL,
	TempoPreparazione NUMBER(10) NOT NULL,
	CodiceProdottoFinito VARCHAR2(10),
	
FOREIGN KEY (CodiceProdottoFinito) REFERENCES ProdottoFinito(CodiceProdotto) ON DELETE SET NULL
);

INSERT INTO FORMULA (CodiceFormula, DataAggiornamento, ProduzionePrevista, TempoPreparazione, CodiceProdottoFinito) VALUES 
('F-001', TO_DATE('2024-01-27 08:47:24', 'YYYY-MM-DD HH24:MI:SS'), 12500, 480, 'PF-001'),
('F-002', TO_DATE('2023-10-12 14:22:07', 'YYYY-MM-DD HH24:MI:SS'), 10000, 480, 'PF-003'),
('F-003', TO_DATE('2023-12-15 16:05:59', 'YYYY-MM-DD HH24:MI:SS'), 10000, 480, 'PF-002'),
('F-004', TO_DATE('2024-03-09 15:33:33', 'YYYY-MM-DD HH24:MI:SS'), 7000, 480, 'PF-004');