create table Azienda_MateriaPrima (
	PIVAAzienda VARCHAR2(11),
	CodiceProdottoMateriaPrima VARCHAR2(10),
	QuantitaProdotto NUMBER(5),
	QuantitaMinimaDaAcquistare NUMBER(5),
	PrezzoProdotto NUMBER(7,2),
	
CONSTRAINT PK_Azienda_MateriaPrima PRIMARY KEY(PIVAAzienda, CodiceProdottoMateriaPrima),
FOREIGN KEY (PIVAAzienda) REFERENCES Azienda(PartitaIva) ON DELETE SET NULL,
FOREIGN KEY (CodiceProdottoMateriaPrima) REFERENCES MateriaPrima(CodiceProdotto) ON DELETE SET NULL
);

insert into Azienda_MateriaPrima (PIVAAzienda, CodiceProdottoMateriaPrima, QuantitaProdotto, QuantitaMinimaDaAcquistare, PrezzoProdotto) values 
('IT162078863', 'MP-001', 407, 9985, 5930),
('IT781790543', 'MP-002', 809, 7616, 2184),
('IT446701663', 'MP-003', 191, 1271, 3581),
('IT201558109', 'MP-004', 211, 9624, 6496),
('IT541162109', 'MP-005', 132, 7253, 7574),
('IT530483497', 'MP-006', 143, 6207, 1446),
('IT397536032', 'MP-007', 919, 1177, 6667),
('IT614018250', 'MP-008', 200, 4572, 5961),
('IT495426825', 'MP-009', 148, 1593, 2986),
('IT634379727', 'MP-010', 399, 5095, 5397),
('IT049242145', 'MP-011', 183, 4968, 6948),
('IT911802013', 'MP-012', 496, 901, 7703),
('IT674061388', 'MP-013', 762, 2410, 7977),
('IT613562416', 'MP-014', 196, 4483, 1830),
('IT166382024', 'MP-015', 709, 2559, 1693),
('IT514500573', 'MP-016', 401, 4159, 6854),
('IT312970754', 'MP-017', 901, 9438, 7543),
('IT249969239', 'MP-018', 220, 4889, 1556),
('IT644136966', 'MP-019', 606, 3320, 1488),
('IT195663428', 'MP-020', 152, 4532, 2697),
('IT162078863', 'MP-021', 789, 2307, 7716),
('IT781790543', 'MP-022', 693, 9169, 3102),
('IT446701663', 'MP-023', 740, 4602, 2261),
('IT201558109', 'MP-024', 269, 9350, 6296),
('IT541162109', 'MP-025', 789, 6445, 9524),
('IT530483497', 'MP-026', 470, 4315, 3864),
('IT397536032', 'MP-027', 858, 4992, 2683),
('IT614018250', 'MP-028', 611, 2907, 2983),
('IT495426825', 'MP-029', 882, 6999, 4059),
('IT634379727', 'MP-030', 818, 4074, 8892),
('IT049242145', 'MP-031', 918, 9594, 4578),
('IT911802013', 'MP-032', 838, 1777, 3211),
('IT674061388', 'MP-033', 295, 8697, 8405),
('IT613562416', 'MP-034', 305, 6188, 8105),
('IT166382024', 'MP-035', 152, 5046, 3580),
('IT514500573', 'MP-036', 159, 3686, 4387),
('IT312970754', 'MP-037', 329, 2738, 2426),
('IT249969239', 'MP-039', 966, 3625, 7829),
('IT644136966', 'MP-041', 591, 1459, 4344),
('IT195663428', 'MP-042', 390, 7817, 3584),
('IT162078863', 'MP-043', 520, 5140, 1206),
('IT781790543', 'MP-044', 786, 9219, 9088),
('IT446701663', 'MP-045', 294, 5054, 3657),
('IT201558109', 'MP-046', 965, 2668, 9036),
('IT541162109', 'MP-047', 574, 3877, 1100),
('IT530483497', 'MP-048', 655, 1251, 9097),
('IT397536032', 'MP-049', 930, 7149, 2877),
('IT614018250', 'MP-050', 859, 3459, 5207),
('IT495426825', 'MP-051', 542, 8483, 7592),
('IT634379727', 'MP-052', 347, 5687, 1646),
('IT049242145', 'MP-053', 406, 3467, 4411),
('IT911802013', 'MP-054', 254, 2440, 1414),
('IT674061388', 'MP-055', 512, 2796, 4475),
('IT613562416', 'MP-056', 507, 3028, 8240),
('IT166382024', 'MP-057', 344, 1609, 3945),
('IT514500573', 'MP-058', 505, 3040, 6712),
('IT312970754', 'MP-059', 432, 7358, 2447),
('IT249969239', 'MP-060', 288, 4812, 9735),
('IT644136966', 'MP-061', 264, 4266, 9634),
('IT195663428', 'MP-062', 992, 7482, 2254),
('IT162078863', 'MP-063', 361, 2133, 4071),
('IT781790543', 'MP-064', 647, 2281, 3994),
('IT446701663', 'MP-065', 812, 3503, 3155),
('IT201558109', 'MP-066', 981, 1586, 1420),
('IT541162109', 'MP-067', 986, 2069, 5605),
('IT530483497', 'MP-068', 442, 2768, 5023),
('IT397536032', 'MP-069', 528, 6793, 8512),
('IT614018250', 'MP-070', 272, 122, 1687),
('IT495426825', 'MP-071', 654, 3463, 9234),
('IT634379727', 'MP-072', 395, 7453, 5270),
('IT049242145', 'MP-073', 604, 2824, 8454),
('IT911802013', 'MP-074', 370, 1979, 1215),
('IT674061388', 'MP-075', 667, 8431, 2376),
('IT613562416', 'MP-076', 869, 5047, 4359),
('IT166382024', 'MP-077', 443, 6736, 8528),
('IT514500573', 'MP-078', 310, 187, 2854),
('IT312970754', 'MP-079', 878, 2630, 9950),
('IT249969239', 'MP-080', 464, 9140, 9058),
('IT644136966', 'MP-083', 240, 8137, 6891),
('IT195663428', 'MP-084', 674, 447, 7494),
('IT162078863', 'MP-085', 432, 7516, 7578),
('IT781790543', 'MP-086', 236, 2077, 7656),
('IT446701663', 'MP-087', 996, 7114, 1596),
('IT201558109', 'MP-088', 951, 5164, 9556),
('IT541162109', 'MP-090', 502, 7168, 4695),
('IT530483497', 'MP-092', 951, 2768, 3678),
('IT397536032', 'MP-093', 656, 4140, 6874),
('IT614018250', 'MP-094', 480, 5350, 7819),
('IT495426825', 'MP-095', 591, 9965, 6903),
('IT634379727', 'MP-096', 520, 1333, 6119),
('IT049242145', 'MP-097', 485, 5180, 2541),
('IT911802013', 'MP-098', 271, 8660, 4677),
('IT674061388', 'MP-099', 460, 4774, 8398),
('IT613562416', 'MP-100', 382, 5027, 5725),
('IT166382024', 'MP-101', 164, 8340, 6658),
('IT514500573', 'MP-102', 479, 2552, 3739),
('IT312970754', 'MP-103', 996, 5060, 8232),
('IT249969239', 'MP-104', 655, 1774, 4276),
('IT644136966', 'MP-105', 248, 3511, 1286),
('IT195663428', 'MP-106', 200, 4544, 8608),
('IT162078863', 'MP-107', 100, 5812, 9335),
('IT781790543', 'MP-108', 545, 7589, 8842),
('IT446701663', 'MP-109', 527, 114, 5804),
('IT201558109', 'MP-110', 229, 4618, 7256),
('IT541162109', 'MP-111', 761, 2855, 1963),
('IT530483497', 'MP-112', 494, 9546, 8033),
('IT397536032', 'MP-113', 478, 5090, 3876),
('IT614018250', 'MP-115', 995, 2257, 5181),
('IT495426825', 'MP-116', 574, 9059, 9533),
('IT634379727', 'MP-117', 234, 1719, 9719),
('IT049242145', 'MP-118', 372, 852, 5606),
('IT911802013', 'MP-120', 287, 8200, 7098),
('IT674061388', 'MP-121', 324, 2475, 6073),
('IT613562416', 'MP-123', 960, 6933, 4954),
('IT166382024', 'MP-124', 168, 1637, 1315),
('IT514500573', 'MP-125', 221, 8283, 7663),
('IT312970754', 'MP-126', 896, 2704, 8929),
('IT644136966', 'MP-130', 700, 8034, 8403),
('IT195663428', 'MP-132', 506, 2012, 8670),
('IT162078863', 'MP-133', 601, 6738, 8657),
('IT446701663', 'MP-137', 191, 5053, 7038),
('IT201558109', 'MP-138', 429, 7866, 4936),
('IT541162109', 'MP-139', 117, 999, 7929),
('IT530483497', 'MP-140', 655, 3748, 2945),
('IT397536032', 'MP-141', 860, 8894, 9641),
('IT614018250', 'MP-142', 528, 8290, 1526),
('IT495426825', 'MP-143', 580, 8700, 3916),
('IT634379727', 'MP-144', 605, 831, 7595),
('IT049242145', 'MP-145', 170, 1599, 5675),
('IT911802013', 'MP-146', 457, 6630, 2283),
('IT674061388', 'MP-147', 773, 6744, 8213),
('IT613562416', 'MP-148', 739, 4946, 4155),
('IT166382024', 'MP-149', 612, 5825, 8556),
('IT514500573', 'MP-150', 929, 524, 6362),
('IT312970754', 'MP-151', 997, 7763, 6492),
('IT249969239', 'MP-152', 978, 1010, 9962),
('IT644136966', 'MP-153', 420, 1092, 2096),
('IT195663428', 'MP-154', 196, 9810, 9294),
('IT162078863', 'MP-155', 485, 7584, 2902),
('IT781790543', 'MP-156', 337, 1335, 2841),
('IT446701663', 'MP-157', 129, 4834, 9341),
('IT201558109', 'MP-158', 141, 230, 8542),
('IT541162109', 'MP-159', 820, 8988, 5602),
('IT530483497', 'MP-160', 628, 8856, 3898),
('IT397536032', 'MP-163', 296, 2705, 6792),
('IT614018250', 'MP-164', 512, 8626, 4208),
('IT495426825', 'MP-166', 865, 1211, 4158),
('IT634379727', 'MP-167', 530, 3452, 1353),
('IT049242145', 'MP-169', 533, 690, 1972);
