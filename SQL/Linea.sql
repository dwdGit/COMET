CREATE TABLE LINEA (
	CodiceLinea VARCHAR2(50) PRIMARY KEY,
	NomeLinea VARCHAR2(50)
);

INSERT INTO LINEA (CodiceLinea,NomeLinea) VALUES
('L-1','Mescolatore'),
('L-2','Estrusore'),
('L-3','Confezionamento');