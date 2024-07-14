	create table "C##DB_COMET".ProdottoFinito (
	CodiceProdottoFinito VARCHAR2(10) PRIMARY KEY,
	NomeProdotto VARCHAR2(50) NOT NULL,
	UnitaMisura VARCHAR2(5) NOT NULL,
	PesoUnitario NUMBER(4) NOT NULL,
	CostoUnitario NUMBER(4,2) NOT NULL,
	Vegano VARCHAR2(1) NOT NULL,
	
	CONSTRAINT CHECK_VEGANO_PF CHECK(Vegano IN ('Y','N'))
);

INSERT INTO PRODOTTOFINITO (CodiceProdottoFinito, NomeProdotto, UnitaMisura, PesoUnitario, CostoUnitario, Vegano) VALUES
('PF-001', 'Russian Amber Imperial', 'ml', 335, 5.0, 'Y'),
('PF-002', 'Heart of Glass Silkening Shampoo', 'ml', 250, 7.5, 'N'),
('PF-003', 'Invati Advanced Thickening Conditioner', 'ml', 200, 11.5, 'N'),
('PF-004', 'Hair Recovering Mask', 'ml', 200, 3.5, 'Y');
