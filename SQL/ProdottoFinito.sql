create table ProdottoFinito (
	CodiceProdotto VARCHAR2(10) PRIMARY KEY,
	NomeProdotto VARCHAR2(50) NOT NULL,
	UnitaMisura VARCHAR2(5),
	PesoUnitario NUMBER(4),
	Vegano VARCHAR2(1),
	
CONSTRAINT CHECK_VEGANO_PF CHECK(Vegano IN ('Y','N'))
);

INSERT INTO PRODOTTOFINITO (CodiceProdotto, NomeProdotto, UnitaMisura, PesoUnitario, Vegano) VALUES
('PF-001', 'Russian Amber Imperial', 'ml', 335, 'Y'),
('PF-002', 'Heart of Glass Silkening Shampoo', 'ml', 250, 'N'),
('PF-003', 'Invati Advanced Thickening Conditioner', 'ml', 200, 'N'),
('PF-004', 'Hair Recovering Mask', 'ml', 200, 'Y');
/*('PF-005', 'Scalp Solutions Balancing Shampoo', 'ml', 200, 'Y'),
('PF-006', 'Invati Advanced Exfoliating Rich Shampoo', 'ml', 200, 'N'),
('PF-007', 'Color Control Rich Shampoo', 'ml', 200, 'Y'),*/
--('PF-008', 'Botanical Repair Strengthening Shampoo', 'ml', 200, 'N'),
/*('PF-009', 'Nutriplenish Conditioner Light Moisture', 'ml', 250, 'Y'),
('PF-010', 'GK Hair Miami Bombshell', 'ml', 280, 'Y'),*/
