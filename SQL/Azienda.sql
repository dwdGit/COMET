create table Azienda (
	PartitaIva VARCHAR2(11) PRIMARY KEY,
	RagioneSociale VARCHAR2(30) NOT NULL,
	Email VARCHAR2(50),
	Telefono VARCHAR2(10),
	Indirizzo VARCHAR2(30),
	Citta VARCHAR2(30),
	CAP VARCHAR2(5),
	Nazione VARCHAR2(2),
	Provincia VARCHAR2(2)
);

insert into Azienda (PartitaIva, RagioneSociale, Email, Telefono, Indirizzo, Citta, CAP, Nazione, Provincia) values
('IT162078863', 'Bvlgari', 'info@bvlgari.com', '3319893357', 'Via Roma 1', 'Milano', '20125', 'IT', 'MI'),
('IT781790543', 'Acqua di Parma', 'info@acquadiparma.com', '3453370015', 'Piazza San Marco 5', 'Salerno', '84124', 'IT', 'SA'),
('IT446701663', 'Kiko Milano', 'info@kikomilano.com', '3283047619', 'Corso Vittorio Emanuele 10', 'Roma', '00196', 'IT', 'RM'),
('IT201558109', 'Davines', 'info@davines.com', '3388180355', 'Via Garibaldi 15', 'Salerno', '84135', 'IT', 'SA'),
('IT541162109', 'Collistar', 'info@collistar.com', '3453098213', 'Viale dei Giardini 20', 'Roma', '00152', 'IT', 'RM'),
('IT530483497', 'Bottega Verde', 'info@bottegaverde.com', '3452784228', 'Via Dante 25', 'Roma', '00128', 'IT', 'RM'),
('IT397536032', 'Comfort Zone', 'info@comfortzone.com', '3454169860', 'Piazza del Duomo 30', 'Roma', '00128', 'IT', 'RM'),
('IT614018250', 'Diego Dalla Palma', 'info@diegodallapalma.com', '3315929975', 'Corso Umberto I 35', 'Roma', '00174', 'IT', 'RM'),
('IT495426825', 'L''Erbolario', 'info@lerbolario.com', '3380069484', 'Via Manzoni 40', 'Salerno', '84135', 'IT', 'SA'),
('IT634379727', 'Nesti Dante', 'info@nestidante.com', '3387556933', 'Piazza Navona 45', 'Roma', '00196', 'IT', 'RM'),
('IT049242145', 'Pupa', 'info@pupa.com', '3459486212', 'Via Veneto 50', 'Roma', '00141', 'IT', 'RM'),
('IT911802013', 'Rilastil', 'info@rilastil.com', '3315493046', 'Viale Trastevere 55', 'Milano', '20158', 'IT', 'MI'),
('IT674061388', 'Tesori d''Oriente', 'info@tesoridoriente.com', '3386403943', 'Via Appia Antica 60', 'Bergamo', '24129', 'IT', 'BG'),
('IT613562416', 'Lavera', 'info@lavera.com', '3280777377', 'Piazza di Spagna 65', 'Milano', '20125', 'IT', 'MI'),
('IT166382024', 'Biofficina Toscana', 'info@biofficinatoscana.com', '3387990939', 'Corso Buenos Aires 70', 'Roma', '00163', 'IT', 'MI'),
('IT514500573', 'Equilibra', 'info@equilibra.com', '3451309706', 'Via dei Condotti 75', 'Milano', '20158', 'IT', 'MI'),
('IT312970754', 'Helan', 'info@helan.com', '3318628637', 'Viale Aventino 80', 'Salerno', '84135', 'IT', 'SA'),
('IT249969239', 'Lush', 'info@lush.com', '3284895102', 'Via Tiburtina 85', 'Milano', '20158', 'IT', 'MI'),
('IT644136966', 'Phytorelax', 'info@phytorelax.com', '3310312099', 'Piazza Barberini 90', 'Roma', '00152', 'IT', 'RM'),
('IT195663428', 'Malu Wilz', 'info@maluwilz.com', '3380854266', 'Corso Magenta 95', 'Roma', '00141', 'IT', 'RM');
