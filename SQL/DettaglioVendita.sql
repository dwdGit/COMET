create table "C##DB_COMET".DettaglioVendita (
	CodiceDettaglioVendita VARCHAR(10) PRIMARY KEY,
	Quantita Number(6) NOT NULL,
	CostoParziale NUMBER(10,2) NOT NULL,
	CodiceProdottoFinito VARCHAR(10) NOT NULL,
	NumeroFattura VARCHAR(10) NOT NULL,

	FOREIGN KEY (CodiceProdottoFinito) REFERENCES ProdottoFinito(CodiceProdottoFinito) ON DELETE SET NULL,
	FOREIGN KEY (NumeroFattura) REFERENCES Vendita(NumeroFattura) ON DELETE SET NULL
);

INSERT INTO DETTAGLIOVENDITA (CODICEDETTAGLIOVENDITA, QUANTITA, COSTOPARZIALE, CODICEPRODOTTOFINITO, NUMEROFATTURA) VALUES
('DV-603', 826, 8016.05, 'PF-1', 'FATTV-3'),
('DV-609', 185, 3186, 'PF-1', 'FATTV-9'),
('DV-611', 941, 9881.11, 'PF-1', 'FATTV-11'),
('DV-613', 291, 8877.59, 'PF-1', 'FATTV-13'),
('DV-617', 773, 3214.61, 'PF-1', 'FATTV-17'),
('DV-622', 152, 9603.25, 'PF-1', 'FATTV-22'),
('DV-625', 551, 1966.03, 'PF-1', 'FATTV-25'),
('DV-627', 417, 5317.91, 'PF-1', 'FATTV-27'),
('DV-637', 351, 4022.39, 'PF-1', 'FATTV-37'),
('DV-642', 827, 3779.08, 'PF-1', 'FATTV-42'),
('DV-647', 591, 4644.05, 'PF-1', 'FATTV-47'),
('DV-648', 280, 7701.12, 'PF-1', 'FATTV-48'),
('DV-658', 708, 7626.37, 'PF-1', 'FATTV-58'),
('DV-661', 677, 1933.82, 'PF-1', 'FATTV-61'),
('DV-676', 653, 7440.24, 'PF-1', 'FATTV-76'),
('DV-685', 630, 5134.82, 'PF-1', 'FATTV-85'),
('DV-687', 899, 9848.38, 'PF-1', 'FATTV-87'),
('DV-697', 690, 6966.55, 'PF-1', 'FATTV-97'),
('DV-704', 158, 8267.46, 'PF-1', 'FATTV-104'),
('DV-716', 252, 9511.42, 'PF-1', 'FATTV-116'),
('DV-722', 610, 4330.75, 'PF-1', 'FATTV-122'),
('DV-727', 134, 9703.76, 'PF-1', 'FATTV-127'),
('DV-730', 851, 3104.82, 'PF-1', 'FATTV-130'),
('DV-735', 524, 9694.42, 'PF-1', 'FATTV-135'),
('DV-747', 231, 6805.21, 'PF-1', 'FATTV-147'),
('DV-750', 850, 4897.43, 'PF-1', 'FATTV-150'),
('DV-751', 749, 4101.26, 'PF-1', 'FATTV-151'),
('DV-754', 612, 8004.32, 'PF-1', 'FATTV-154'),
('DV-762', 705, 3347.39, 'PF-1', 'FATTV-162'),
('DV-766', 255, 6011.64, 'PF-1', 'FATTV-166'),
('DV-773', 208, 9683.53, 'PF-1', 'FATTV-173'),
('DV-782', 300, 4614.63, 'PF-1', 'FATTV-182'),
('DV-786', 703, 4074.39, 'PF-1', 'FATTV-186'),
('DV-791', 442, 6035.05, 'PF-1', 'FATTV-191'),
('DV-316', 743, 4505.74, 'PF-1', 'FATTV-16'),
('DV-323', 286, 6816.29, 'PF-1', 'FATTV-23'),
('DV-324', 163, 6177.6, 'PF-1', 'FATTV-24'),
('DV-326', 259, 4798.4, 'PF-1', 'FATTV-26'),
('DV-329', 130, 7261.04, 'PF-1', 'FATTV-29'),
('DV-334', 277, 1184.15, 'PF-1', 'FATTV-34'),
('DV-343', 715, 3721.05, 'PF-1', 'FATTV-43'),
('DV-344', 447, 5205.06, 'PF-1', 'FATTV-44'),
('DV-353', 979, 2526.59, 'PF-1', 'FATTV-53'),
('DV-354', 951, 5677.39, 'PF-1', 'FATTV-54'),
('DV-362', 547, 1767.48, 'PF-1', 'FATTV-62'),
('DV-372', 787, 5967.56, 'PF-1', 'FATTV-72'),
('DV-373', 802, 4056.55, 'PF-1', 'FATTV-73'),
('DV-382', 357, 9651.22, 'PF-1', 'FATTV-82'),
('DV-384', 798, 5022.13, 'PF-1', 'FATTV-84'),
('DV-386', 544, 3759.37, 'PF-1', 'FATTV-86'),
('DV-396', 967, 6327.06, 'PF-1', 'FATTV-96'),
('DV-398', 984, 3913.07, 'PF-1', 'FATTV-98'),
('DV-400', 339, 8750.12, 'PF-1', 'FATTV-100'),
('DV-405', 421, 3838.58, 'PF-1', 'FATTV-105'),
('DV-412', 706, 6189.46, 'PF-1', 'FATTV-112'),
('DV-414', 941, 8153.93, 'PF-1', 'FATTV-114'),
('DV-417', 484, 1076.85, 'PF-1', 'FATTV-117'),
('DV-418', 633, 7745.85, 'PF-1', 'FATTV-118'),
('DV-421', 456, 3954.51, 'PF-1', 'FATTV-121'),
('DV-425', 802, 8757.36, 'PF-1', 'FATTV-125'),
('DV-429', 668, 4744.52, 'PF-1', 'FATTV-129'),
('DV-437', 327, 8177.46, 'PF-1', 'FATTV-137'),
('DV-438', 962, 4413.69, 'PF-1', 'FATTV-138'),
('DV-443', 933, 1558.29, 'PF-1', 'FATTV-143'),
('DV-445', 709, 9589.08, 'PF-1', 'FATTV-145'),
('DV-455', 236, 8819.83, 'PF-1', 'FATTV-155'),
('DV-459', 332, 2102.2, 'PF-1', 'FATTV-159'),
('DV-468', 272, 1992.89, 'PF-1', 'FATTV-168'),
('DV-470', 203, 4577.96, 'PF-1', 'FATTV-170'),
('DV-474', 356, 3557.57, 'PF-1', 'FATTV-174'),
('DV-478', 848, 1976.14, 'PF-1', 'FATTV-178'),
('DV-484', 254, 3767.87, 'PF-1', 'FATTV-184'),
('DV-488', 780, 2577.76, 'PF-1', 'FATTV-188'),
('DV-492', 786, 5020.67, 'PF-1', 'FATTV-192'),
('DV-494', 244, 6808.14, 'PF-1', 'FATTV-194'),
('DV-496', 133, 3775.33, 'PF-1', 'FATTV-196'),
('DV-501', 234, 1568.33, 'PF-1', 'FATTV-201'),
('DV-504', 462, 2863.98, 'PF-1', 'FATTV-204'),
('DV-507', 661, 7176.45, 'PF-1', 'FATTV-207'),
('DV-508', 558, 5594.36, 'PF-1', 'FATTV-208'),
('DV-510', 399, 3057.56, 'PF-1', 'FATTV-210'),
('DV-520', 541, 9784.81, 'PF-1', 'FATTV-220'),
('DV-527', 700, 4959.04, 'PF-1', 'FATTV-227'),
('DV-538', 813, 9241.42, 'PF-1', 'FATTV-238'),
('DV-540', 322, 1250.91, 'PF-1', 'FATTV-240'),
('DV-543', 932, 8188.14, 'PF-1', 'FATTV-243'),
('DV-547', 368, 2862.39, 'PF-1', 'FATTV-247'),
('DV-549', 516, 1010.5, 'PF-1', 'FATTV-249'),
('DV-552', 602, 6261.93, 'PF-1', 'FATTV-252'),
('DV-565', 177, 9714.03, 'PF-1', 'FATTV-265'),
('DV-570', 993, 3316.74, 'PF-1', 'FATTV-270'),
('DV-571', 895, 8801.86, 'PF-1', 'FATTV-271'),
('DV-584', 239, 4388.83, 'PF-1', 'FATTV-284'),
('DV-585', 780, 4304.15, 'PF-1', 'FATTV-285'),
('DV-588', 704, 4950.99, 'PF-1', 'FATTV-288'),
('DV-589', 289, 5769.19, 'PF-1', 'FATTV-289'),
('DV-594', 530, 1558.96, 'PF-1', 'FATTV-294'),
('DV-595', 228, 2203.85, 'PF-1', 'FATTV-295'),
('DV-2', 732, 7349.08, 'PF-1', 'FATTV-2'),
('DV-10', 872, 8032.22, 'PF-1', 'FATTV-10'),
('DV-21', 331, 2785.14, 'PF-1', 'FATTV-21'),
('DV-28', 478, 6312.95, 'PF-1', 'FATTV-28'),
('DV-31', 724, 3691.73, 'PF-1', 'FATTV-31'),
('DV-33', 751, 5473.65, 'PF-1', 'FATTV-33'),
('DV-38', 228, 9886.55, 'PF-1', 'FATTV-38'),
('DV-55', 210, 9366.68, 'PF-1', 'FATTV-55'),
('DV-60', 764, 1663.55, 'PF-1', 'FATTV-60'),
('DV-63', 341, 4216.13, 'PF-1', 'FATTV-63'),
('DV-65', 335, 2423.01, 'PF-1', 'FATTV-65'),
('DV-67', 356, 5242.69, 'PF-1', 'FATTV-67'),
('DV-69', 190, 6427.23, 'PF-1', 'FATTV-69'),
('DV-70', 154, 1715.55, 'PF-1', 'FATTV-70'),
('DV-74', 620, 4287.3, 'PF-1', 'FATTV-74'),
('DV-75', 468, 8408.25, 'PF-1', 'FATTV-75'),
('DV-77', 989, 5110.58, 'PF-1', 'FATTV-77'),
('DV-79', 667, 7755.79, 'PF-1', 'FATTV-79'),
('DV-88', 776, 3714.97, 'PF-1', 'FATTV-88'),
('DV-91', 351, 8287.89, 'PF-1', 'FATTV-91'),
('DV-94', 705, 5752.89, 'PF-1', 'FATTV-94'),
('DV-99', 817, 4981.48, 'PF-1', 'FATTV-99'),
('DV-108', 732, 7678.85, 'PF-1', 'FATTV-108'),
('DV-123', 691, 7313.54, 'PF-1', 'FATTV-123'),
('DV-128', 194, 4279.15, 'PF-1', 'FATTV-128'),
('DV-131', 179, 1139.18, 'PF-1', 'FATTV-131'),
('DV-133', 230, 7490.18, 'PF-1', 'FATTV-133'),
('DV-141', 920, 4915.96, 'PF-1', 'FATTV-141'),
('DV-142', 556, 8020.62, 'PF-1', 'FATTV-142'),
('DV-153', 691, 8276.94, 'PF-1', 'FATTV-153'),
('DV-156', 351, 5891.33, 'PF-1', 'FATTV-156'),
('DV-160', 251, 8556.29, 'PF-1', 'FATTV-160'),
('DV-161', 544, 7679.02, 'PF-1', 'FATTV-161'),
('DV-164', 538, 7139.29, 'PF-1', 'FATTV-164'),
('DV-171', 979, 2004.04, 'PF-1', 'FATTV-171'),
('DV-187', 395, 1378.22, 'PF-1', 'FATTV-187'),
('DV-190', 968, 2083.52, 'PF-1', 'FATTV-190'),
('DV-193', 873, 3775.79, 'PF-1', 'FATTV-193'),
('DV-198', 962, 2711.03, 'PF-1', 'FATTV-198'),
('DV-200', 183, 5037.97, 'PF-1', 'FATTV-200'),
('DV-205', 308, 7764.12, 'PF-1', 'FATTV-205'),
('DV-209', 704, 3219.18, 'PF-1', 'FATTV-209'),
('DV-211', 688, 3835.8, 'PF-1', 'FATTV-211'),
('DV-217', 235, 6689.01, 'PF-1', 'FATTV-217'),
('DV-219', 769, 8672.11, 'PF-1', 'FATTV-219'),
('DV-222', 374, 5672.25, 'PF-1', 'FATTV-222'),
('DV-235', 778, 4138.49, 'PF-1', 'FATTV-235'),
('DV-237', 708, 2654.45, 'PF-1', 'FATTV-237'),
('DV-239', 357, 2637.9, 'PF-1', 'FATTV-239'),
('DV-248', 457, 3125.85, 'PF-1', 'FATTV-248'),
('DV-251', 441, 8204.87, 'PF-1', 'FATTV-251'),
('DV-253', 768, 6869.21, 'PF-1', 'FATTV-253'),
('DV-261', 475, 1569.42, 'PF-1', 'FATTV-261'),
('DV-266', 191, 8233.63, 'PF-1', 'FATTV-266'),
('DV-269', 657, 6823.16, 'PF-1', 'FATTV-269'),
('DV-273', 427, 2573.68, 'PF-1', 'FATTV-273'),
('DV-275', 864, 8815.91, 'PF-1', 'FATTV-275'),
('DV-279', 371, 3222.04, 'PF-1', 'FATTV-279'),
('DV-282', 920, 3052.69, 'PF-1', 'FATTV-282'),
('DV-287', 663, 6199.14, 'PF-1', 'FATTV-287'),
('DV-290', 990, 2276.38, 'PF-1', 'FATTV-290'),
('DV-296', 696, 7931.89, 'PF-1', 'FATTV-296'),
('DV-306', 209, 1541.45, 'PF-1', 'FATTV-6'),
('DV-315', 360, 6408.32, 'PF-1', 'FATTV-15'),
('DV-558', 451, 9909.77, 'PF-2', 'FATTV-258'),
('DV-560', 973, 7539.04, 'PF-2', 'FATTV-260'),
('DV-568', 632, 6886.47, 'PF-2', 'FATTV-268'),
('DV-572', 320, 4726.09, 'PF-2', 'FATTV-272'),
('DV-573', 344, 4926.43, 'PF-2', 'FATTV-273'),
('DV-575', 879, 9138.41, 'PF-2', 'FATTV-275'),
('DV-582', 199, 9102.49, 'PF-2', 'FATTV-282'),
('DV-583', 689, 9189.55, 'PF-2', 'FATTV-283'),
('DV-596', 765, 6356.51, 'PF-2', 'FATTV-296'),
('DV-608', 100, 4692.99, 'PF-2', 'FATTV-8'),
('DV-628', 487, 9876.23, 'PF-2', 'FATTV-28'),
('DV-629', 415, 6447.7, 'PF-2', 'FATTV-29'),
('DV-654', 213, 7957.16, 'PF-2', 'FATTV-54'),
('DV-667', 678, 1999.9, 'PF-2', 'FATTV-67'),
('DV-668', 686, 3532.94, 'PF-2', 'FATTV-68'),
('DV-669', 309, 6902.85, 'PF-2', 'FATTV-69'),
('DV-677', 307, 1699.59, 'PF-2', 'FATTV-77'),
('DV-679', 111, 2581.76, 'PF-2', 'FATTV-79'),
('DV-686', 639, 8394.21, 'PF-2', 'FATTV-86'),
('DV-689', 981, 3168.08, 'PF-2', 'FATTV-89'),
('DV-690', 959, 2793.43, 'PF-2', 'FATTV-90'),
('DV-699', 872, 3577.7, 'PF-2', 'FATTV-99'),
('DV-710', 487, 4797.22, 'PF-2', 'FATTV-110'),
('DV-713', 829, 8661.12, 'PF-2', 'FATTV-113'),
('DV-715', 289, 5003.28, 'PF-2', 'FATTV-115'),
('DV-726', 516, 5597.78, 'PF-2', 'FATTV-126'),
('DV-736', 138, 9318.72, 'PF-2', 'FATTV-136'),
('DV-737', 720, 6991.02, 'PF-2', 'FATTV-137'),
('DV-749', 880, 3262.55, 'PF-2', 'FATTV-149'),
('DV-752', 220, 2654.26, 'PF-2', 'FATTV-152'),
('DV-755', 731, 7356.52, 'PF-2', 'FATTV-155'),
('DV-767', 780, 1573.67, 'PF-2', 'FATTV-167'),
('DV-769', 687, 9038.95, 'PF-2', 'FATTV-169'),
('DV-772', 164, 7685.23, 'PF-2', 'FATTV-172'),
('DV-774', 255, 8006.62, 'PF-2', 'FATTV-174'),
('DV-787', 150, 5312.69, 'PF-2', 'FATTV-187'),
('DV-788', 378, 6045.14, 'PF-2', 'FATTV-188'),
('DV-789', 107, 5342.19, 'PF-2', 'FATTV-189'),
('DV-793', 503, 6100.69, 'PF-2', 'FATTV-193'),
('DV-795', 977, 9059.62, 'PF-2', 'FATTV-195'),
('DV-800', 383, 3514.27, 'PF-2', 'FATTV-200'),
('DV-257', 919, 2210.46, 'PF-2', 'FATTV-257'),
('DV-263', 531, 9986.24, 'PF-2', 'FATTV-263'),
('DV-264', 952, 1658.24, 'PF-2', 'FATTV-264'),
('DV-271', 985, 4065.62, 'PF-2', 'FATTV-271'),
('DV-281', 387, 8085.19, 'PF-2', 'FATTV-281'),
('DV-284', 986, 1174.23, 'PF-2', 'FATTV-284'),
('DV-285', 407, 1264.37, 'PF-2', 'FATTV-285'),
('DV-286', 314, 7975.62, 'PF-2', 'FATTV-286'),
('DV-289', 950, 1848.38, 'PF-2', 'FATTV-289'),
('DV-295', 559, 5109.71, 'PF-2', 'FATTV-295'),
('DV-297', 180, 1983.63, 'PF-2', 'FATTV-297'),
('DV-298', 279, 9096.84, 'PF-2', 'FATTV-298'),
('DV-299', 144, 7152.79, 'PF-2', 'FATTV-299'),
('DV-300', 702, 9134.98, 'PF-2', 'FATTV-300'),
('DV-304', 820, 2105.38, 'PF-2', 'FATTV-4'),
('DV-307', 892, 2748.3, 'PF-2', 'FATTV-7'),
('DV-325', 670, 4313.99, 'PF-2', 'FATTV-25'),
('DV-330', 166, 4144.13, 'PF-2', 'FATTV-30'),
('DV-337', 358, 5142.55, 'PF-2', 'FATTV-37'),
('DV-338', 217, 6154.81, 'PF-2', 'FATTV-38'),
('DV-339', 957, 7221.62, 'PF-2', 'FATTV-39'),
('DV-340', 683, 6920.61, 'PF-2', 'FATTV-40'),
('DV-341', 462, 4189.89, 'PF-2', 'FATTV-41'),
('DV-345', 126, 8339.23, 'PF-2', 'FATTV-45'),
('DV-346', 826, 5065.32, 'PF-2', 'FATTV-46'),
('DV-349', 366, 2954.62, 'PF-2', 'FATTV-49'),
('DV-351', 745, 9012.08, 'PF-2', 'FATTV-51'),
('DV-356', 223, 5009.71, 'PF-2', 'FATTV-56'),
('DV-358', 928, 9612.24, 'PF-2', 'FATTV-58'),
('DV-359', 820, 1066.08, 'PF-2', 'FATTV-59'),
('DV-363', 219, 2688.58, 'PF-2', 'FATTV-63'),
('DV-371', 298, 6601.68, 'PF-2', 'FATTV-71'),
('DV-378', 752, 2445.78, 'PF-2', 'FATTV-78'),
('DV-380', 170, 5999.83, 'PF-2', 'FATTV-80'),
('DV-383', 138, 3774.26, 'PF-2', 'FATTV-83'),
('DV-385', 940, 1257.13, 'PF-2', 'FATTV-85'),
('DV-387', 349, 6204.13, 'PF-2', 'FATTV-87'),
('DV-388', 759, 1895.29, 'PF-2', 'FATTV-88'),
('DV-391', 907, 8116.06, 'PF-2', 'FATTV-91'),
('DV-393', 594, 4695.51, 'PF-2', 'FATTV-93'),
('DV-422', 114, 8032.53, 'PF-2', 'FATTV-122'),
('DV-424', 457, 8707.32, 'PF-2', 'FATTV-124'),
('DV-427', 407, 8758.26, 'PF-2', 'FATTV-127'),
('DV-431', 987, 9794.84, 'PF-2', 'FATTV-131'),
('DV-439', 474, 8760.6, 'PF-2', 'FATTV-139'),
('DV-442', 439, 1897.08, 'PF-2', 'FATTV-142'),
('DV-446', 798, 3368.46, 'PF-2', 'FATTV-146'),
('DV-448', 113, 7845.91, 'PF-2', 'FATTV-148'),
('DV-454', 181, 2044.14, 'PF-2', 'FATTV-154'),
('DV-456', 190, 6529.3, 'PF-2', 'FATTV-156'),
('DV-477', 474, 2871.15, 'PF-2', 'FATTV-177'),
('DV-483', 555, 8553.52, 'PF-2', 'FATTV-183'),
('DV-486', 980, 5180.29, 'PF-2', 'FATTV-186'),
('DV-502', 141, 3715.51, 'PF-2', 'FATTV-202'),
('DV-503', 579, 6192.61, 'PF-2', 'FATTV-203'),
('DV-509', 873, 6504.38, 'PF-2', 'FATTV-209'),
('DV-515', 145, 4835.95, 'PF-2', 'FATTV-215'),
('DV-522', 144, 6298.29, 'PF-2', 'FATTV-222'),
('DV-524', 681, 9109.5, 'PF-2', 'FATTV-224'),
('DV-536', 155, 5194.17, 'PF-2', 'FATTV-236'),
('DV-537', 437, 9928.04, 'PF-2', 'FATTV-237'),
('DV-542', 763, 6452.14, 'PF-2', 'FATTV-242'),
('DV-544', 865, 3147.88, 'PF-2', 'FATTV-244'),
('DV-555', 399, 3541.09, 'PF-2', 'FATTV-255'),
('DV-1', 723, 4417.27, 'PF-2', 'FATTV-1'),
('DV-5', 189, 9394.64, 'PF-2', 'FATTV-5'),
('DV-9', 705, 8910.9, 'PF-2', 'FATTV-9'),
('DV-11', 328, 3020.19, 'PF-2', 'FATTV-11'),
('DV-13', 123, 6640.36, 'PF-2', 'FATTV-13'),
('DV-19', 992, 4881.9, 'PF-2', 'FATTV-19'),
('DV-23', 369, 8101.51, 'PF-2', 'FATTV-23'),
('DV-24', 596, 8264.83, 'PF-2', 'FATTV-24'),
('DV-26', 187, 3866.47, 'PF-2', 'FATTV-26'),
('DV-32', 419, 4482.07, 'PF-2', 'FATTV-32'),
('DV-48', 530, 9324.82, 'PF-2', 'FATTV-48'),
('DV-52', 175, 2109.71, 'PF-2', 'FATTV-52'),
('DV-57', 406, 4484.37, 'PF-2', 'FATTV-57'),
('DV-64', 454, 2761.86, 'PF-2', 'FATTV-64'),
('DV-66', 620, 6439.1, 'PF-2', 'FATTV-66'),
('DV-72', 969, 7422.88, 'PF-2', 'FATTV-72'),
('DV-76', 179, 5976.52, 'PF-2', 'FATTV-76'),
('DV-81', 358, 1746.17, 'PF-2', 'FATTV-81'),
('DV-84', 445, 9925.95, 'PF-2', 'FATTV-84'),
('DV-100', 380, 5277.9, 'PF-2', 'FATTV-100'),
('DV-101', 214, 1188.63, 'PF-2', 'FATTV-101'),
('DV-102', 263, 4199.6, 'PF-2', 'FATTV-102'),
('DV-106', 838, 2479.16, 'PF-2', 'FATTV-106'),
('DV-107', 671, 9918.99, 'PF-2', 'FATTV-107'),
('DV-111', 410, 6541.56, 'PF-2', 'FATTV-111'),
('DV-114', 570, 9652.35, 'PF-2', 'FATTV-114'),
('DV-116', 232, 6433.72, 'PF-2', 'FATTV-116'),
('DV-117', 967, 6441.63, 'PF-2', 'FATTV-117'),
('DV-125', 520, 5814.01, 'PF-2', 'FATTV-125'),
('DV-130', 438, 6919.16, 'PF-2', 'FATTV-130'),
('DV-132', 517, 8379.36, 'PF-2', 'FATTV-132'),
('DV-135', 855, 5026.83, 'PF-2', 'FATTV-135'),
('DV-140', 533, 7071.43, 'PF-2', 'FATTV-140'),
('DV-144', 569, 6845.96, 'PF-2', 'FATTV-144'),
('DV-145', 141, 4868.04, 'PF-2', 'FATTV-145'),
('DV-157', 384, 6788.57, 'PF-2', 'FATTV-157'),
('DV-162', 599, 8592.75, 'PF-2', 'FATTV-162'),
('DV-163', 900, 1141.46, 'PF-2', 'FATTV-163'),
('DV-168', 831, 4215.15, 'PF-2', 'FATTV-168'),
('DV-170', 715, 4298.97, 'PF-2', 'FATTV-170'),
('DV-173', 236, 2013.8, 'PF-2', 'FATTV-173'),
('DV-175', 863, 6952.46, 'PF-2', 'FATTV-175'),
('DV-176', 468, 5128.88, 'PF-2', 'FATTV-176'),
('DV-179', 480, 5432.07, 'PF-2', 'FATTV-179'),
('DV-185', 856, 7300.12, 'PF-2', 'FATTV-185'),
('DV-191', 174, 6039.54, 'PF-2', 'FATTV-191'),
('DV-192', 272, 3503.63, 'PF-2', 'FATTV-192'),
('DV-201', 924, 9033.71, 'PF-2', 'FATTV-201'),
('DV-208', 142, 2684.94, 'PF-2', 'FATTV-208'),
('DV-210', 142, 8048.77, 'PF-2', 'FATTV-210'),
('DV-213', 669, 6695.21, 'PF-2', 'FATTV-213'),
('DV-214', 865, 6444.27, 'PF-2', 'FATTV-214'),
('DV-218', 324, 8934.04, 'PF-2', 'FATTV-218'),
('DV-220', 704, 2058.3, 'PF-2', 'FATTV-220'),
('DV-223', 321, 8932.91, 'PF-2', 'FATTV-223'),
('DV-225', 946, 4194.56, 'PF-2', 'FATTV-225'),
('DV-226', 445, 4845.31, 'PF-2', 'FATTV-226'),
('DV-228', 493, 1163.34, 'PF-2', 'FATTV-228'),
('DV-231', 370, 3993.83, 'PF-2', 'FATTV-231'),
('DV-234', 745, 9313.26, 'PF-2', 'FATTV-234'),
('DV-238', 525, 3251.83, 'PF-2', 'FATTV-238'),
('DV-245', 798, 4258.24, 'PF-2', 'FATTV-245'),
('DV-249', 118, 6421.02, 'PF-2', 'FATTV-249'),
('DV-254', 924, 3833.7, 'PF-2', 'FATTV-254'),
('DV-3', 351, 8635.6, 'PF-3', 'FATTV-3'),
('DV-14', 888, 8167.3, 'PF-3', 'FATTV-14'),
('DV-15', 527, 5741.9, 'PF-3', 'FATTV-15'),
('DV-16', 626, 3458.46, 'PF-3', 'FATTV-16'),
('DV-20', 685, 8253.4, 'PF-3', 'FATTV-20'),
('DV-22', 952, 1064.53, 'PF-3', 'FATTV-22'),
('DV-27', 254, 8446.34, 'PF-3', 'FATTV-27'),
('DV-29', 345, 2268.06, 'PF-3', 'FATTV-29'),
('DV-34', 776, 1696.87, 'PF-3', 'FATTV-34'),
('DV-37', 849, 2575.81, 'PF-3', 'FATTV-37'),
('DV-45', 555, 8706.73, 'PF-3', 'FATTV-45'),
('DV-46', 728, 7323.07, 'PF-3', 'FATTV-46'),
('DV-50', 802, 5759.95, 'PF-3', 'FATTV-50'),
('DV-54', 814, 7898.49, 'PF-3', 'FATTV-54'),
('DV-56', 309, 3723.4, 'PF-3', 'FATTV-56'),
('DV-86', 574, 6419.13, 'PF-3', 'FATTV-86'),
('DV-93', 251, 3211.85, 'PF-3', 'FATTV-93'),
('DV-103', 838, 4998.59, 'PF-3', 'FATTV-103'),
('DV-104', 771, 9019.11, 'PF-3', 'FATTV-104'),
('DV-109', 761, 5961.16, 'PF-3', 'FATTV-109'),
('DV-110', 410, 5717.63, 'PF-3', 'FATTV-110'),
('DV-113', 236, 5500.58, 'PF-3', 'FATTV-113'),
('DV-118', 680, 7261.18, 'PF-3', 'FATTV-118'),
('DV-119', 202, 5810.34, 'PF-3', 'FATTV-119'),
('DV-120', 431, 2131.58, 'PF-3', 'FATTV-120'),
('DV-122', 245, 6455.41, 'PF-3', 'FATTV-122'),
('DV-126', 396, 7924, 'PF-3', 'FATTV-126'),
('DV-127', 362, 6633.94, 'PF-3', 'FATTV-127'),
('DV-136', 149, 4916.43, 'PF-3', 'FATTV-136'),
('DV-137', 266, 2418.76, 'PF-3', 'FATTV-137'),
('DV-138', 257, 8875.31, 'PF-3', 'FATTV-138'),
('DV-139', 890, 8118.95, 'PF-3', 'FATTV-139'),
('DV-146', 412, 8604.36, 'PF-3', 'FATTV-146'),
('DV-152', 708, 7411.85, 'PF-3', 'FATTV-152'),
('DV-158', 411, 5366.36, 'PF-3', 'FATTV-158'),
('DV-159', 762, 7525.34, 'PF-3', 'FATTV-159'),
('DV-178', 820, 5305.47, 'PF-3', 'FATTV-178'),
('DV-181', 481, 2192.38, 'PF-3', 'FATTV-181'),
('DV-183', 302, 2770.17, 'PF-3', 'FATTV-183'),
('DV-184', 937, 8683.91, 'PF-3', 'FATTV-184'),
('DV-188', 888, 4091.18, 'PF-3', 'FATTV-188'),
('DV-195', 854, 5957.19, 'PF-3', 'FATTV-195'),
('DV-199', 838, 6124.38, 'PF-3', 'FATTV-199'),
('DV-203', 445, 7580.66, 'PF-3', 'FATTV-203'),
('DV-207', 742, 5624.15, 'PF-3', 'FATTV-207'),
('DV-216', 135, 8473.05, 'PF-3', 'FATTV-216'),
('DV-224', 738, 7428.07, 'PF-3', 'FATTV-224'),
('DV-232', 926, 1460.87, 'PF-3', 'FATTV-232'),
('DV-240', 637, 8887.39, 'PF-3', 'FATTV-240'),
('DV-241', 735, 6709.48, 'PF-3', 'FATTV-241'),
('DV-246', 903, 9839, 'PF-3', 'FATTV-246'),
('DV-247', 268, 2288.58, 'PF-3', 'FATTV-247'),
('DV-250', 381, 2878.1, 'PF-3', 'FATTV-250'),
('DV-252', 488, 5448.49, 'PF-3', 'FATTV-252'),
('DV-255', 141, 3829.59, 'PF-3', 'FATTV-255'),
('DV-256', 812, 2607.98, 'PF-3', 'FATTV-256'),
('DV-258', 376, 8138.75, 'PF-3', 'FATTV-258'),
('DV-260', 767, 9875.92, 'PF-3', 'FATTV-260'),
('DV-272', 187, 7099.38, 'PF-3', 'FATTV-272'),
('DV-274', 546, 3696.19, 'PF-3', 'FATTV-274'),
('DV-280', 170, 4544.56, 'PF-3', 'FATTV-280'),
('DV-288', 396, 8728.4, 'PF-3', 'FATTV-288'),
('DV-291', 792, 4382.62, 'PF-3', 'FATTV-291'),
('DV-317', 282, 7026.53, 'PF-3', 'FATTV-17'),
('DV-333', 433, 7959.44, 'PF-3', 'FATTV-33'),
('DV-347', 922, 8349.71, 'PF-3', 'FATTV-47'),
('DV-348', 680, 4205.73, 'PF-3', 'FATTV-48'),
('DV-360', 915, 4230.41, 'PF-3', 'FATTV-60'),
('DV-361', 837, 4207.39, 'PF-3', 'FATTV-61'),
('DV-364', 962, 1587.87, 'PF-3', 'FATTV-64'),
('DV-365', 110, 6685.29, 'PF-3', 'FATTV-65'),
('DV-366', 615, 2972.32, 'PF-3', 'FATTV-66'),
('DV-368', 750, 8121.89, 'PF-3', 'FATTV-68'),
('DV-369', 532, 1484.73, 'PF-3', 'FATTV-69'),
('DV-370', 320, 8918.61, 'PF-3', 'FATTV-70'),
('DV-377', 999, 3680.46, 'PF-3', 'FATTV-77'),
('DV-379', 900, 8978.67, 'PF-3', 'FATTV-79'),
('DV-381', 972, 7386.36, 'PF-3', 'FATTV-81'),
('DV-390', 532, 2746.77, 'PF-3', 'FATTV-90'),
('DV-394', 952, 4643.15, 'PF-3', 'FATTV-94'),
('DV-395', 930, 1280.21, 'PF-3', 'FATTV-95'),
('DV-397', 513, 3520.98, 'PF-3', 'FATTV-97'),
('DV-406', 441, 4265.69, 'PF-3', 'FATTV-106'),
('DV-408', 199, 6882.56, 'PF-3', 'FATTV-108'),
('DV-415', 328, 6890.74, 'PF-3', 'FATTV-115'),
('DV-416', 814, 4823.95, 'PF-3', 'FATTV-116'),
('DV-423', 879, 3956.83, 'PF-3', 'FATTV-123'),
('DV-433', 956, 7857.6, 'PF-3', 'FATTV-133'),
('DV-440', 768, 7073.19, 'PF-3', 'FATTV-140'),
('DV-441', 972, 3543.29, 'PF-3', 'FATTV-141'),
('DV-444', 372, 7036.56, 'PF-3', 'FATTV-144'),
('DV-450', 511, 1540.23, 'PF-3', 'FATTV-150'),
('DV-451', 692, 8516.7, 'PF-3', 'FATTV-151'),
('DV-453', 623, 5234.67, 'PF-3', 'FATTV-153'),
('DV-460', 576, 4810.23, 'PF-3', 'FATTV-160'),
('DV-462', 799, 3147.59, 'PF-3', 'FATTV-162'),
('DV-463', 467, 2655.7, 'PF-3', 'FATTV-163'),
('DV-465', 901, 7454.51, 'PF-3', 'FATTV-165'),
('DV-467', 219, 8919.13, 'PF-3', 'FATTV-167'),
('DV-473', 756, 5440.41, 'PF-3', 'FATTV-173'),
('DV-476', 170, 4014.32, 'PF-3', 'FATTV-176'),
('DV-480', 999, 8891.53, 'PF-3', 'FATTV-180'),
('DV-482', 506, 6552.75, 'PF-3', 'FATTV-182'),
('DV-489', 519, 2711.81, 'PF-3', 'FATTV-189'),
('DV-491', 635, 9756.17, 'PF-3', 'FATTV-191'),
('DV-497', 1000, 5428.27, 'PF-3', 'FATTV-197'),
('DV-506', 628, 3880.92, 'PF-3', 'FATTV-206'),
('DV-512', 111, 1979.34, 'PF-3', 'FATTV-212'),
('DV-513', 824, 8754.05, 'PF-3', 'FATTV-213'),
('DV-521', 939, 3132.35, 'PF-3', 'FATTV-221'),
('DV-526', 229, 6398.24, 'PF-3', 'FATTV-226'),
('DV-529', 815, 4755.68, 'PF-3', 'FATTV-229'),
('DV-530', 557, 8818.96, 'PF-3', 'FATTV-230'),
('DV-533', 500, 4100.52, 'PF-3', 'FATTV-233'),
('DV-539', 125, 5283.01, 'PF-3', 'FATTV-239'),
('DV-545', 361, 9741.95, 'PF-3', 'FATTV-245'),
('DV-551', 286, 6711.06, 'PF-3', 'FATTV-251'),
('DV-554', 440, 5661.1, 'PF-3', 'FATTV-254'),
('DV-557', 212, 3769.18, 'PF-3', 'FATTV-257'),
('DV-559', 190, 6152.81, 'PF-3', 'FATTV-259'),
('DV-562', 889, 8824.01, 'PF-3', 'FATTV-262'),
('DV-564', 840, 2712.09, 'PF-3', 'FATTV-264'),
('DV-567', 586, 1707.46, 'PF-3', 'FATTV-267'),
('DV-576', 394, 3278.5, 'PF-3', 'FATTV-276'),
('DV-577', 320, 7910.42, 'PF-3', 'FATTV-277'),
('DV-593', 266, 5494.87, 'PF-3', 'FATTV-293'),
('DV-597', 426, 2368.19, 'PF-3', 'FATTV-297'),
('DV-618', 351, 2614.43, 'PF-3', 'FATTV-18'),
('DV-624', 781, 7234.43, 'PF-3', 'FATTV-24'),
('DV-630', 673, 7398.61, 'PF-3', 'FATTV-30'),
('DV-631', 105, 2407.49, 'PF-3', 'FATTV-31'),
('DV-635', 384, 5417.37, 'PF-3', 'FATTV-35'),
('DV-636', 861, 2119.73, 'PF-3', 'FATTV-36'),
('DV-641', 566, 3770.22, 'PF-3', 'FATTV-41'),
('DV-643', 868, 3686.39, 'PF-3', 'FATTV-43'),
('DV-644', 961, 4694.47, 'PF-3', 'FATTV-44'),
('DV-649', 218, 3001.82, 'PF-3', 'FATTV-49'),
('DV-663', 427, 2793.84, 'PF-3', 'FATTV-63'),
('DV-671', 604, 6429.13, 'PF-3', 'FATTV-71'),
('DV-672', 230, 2331.93, 'PF-3', 'FATTV-72'),
('DV-674', 489, 6535.79, 'PF-3', 'FATTV-74'),
('DV-678', 480, 1021.83, 'PF-3', 'FATTV-78'),
('DV-683', 814, 7504.27, 'PF-3', 'FATTV-83'),
('DV-688', 956, 1200.16, 'PF-3', 'FATTV-88'),
('DV-692', 165, 4383.41, 'PF-3', 'FATTV-92'),
('DV-702', 373, 7588.7, 'PF-3', 'FATTV-102'),
('DV-714', 739, 2863.22, 'PF-3', 'FATTV-114'),
('DV-717', 623, 4493.12, 'PF-3', 'FATTV-117'),
('DV-721', 389, 2939.22, 'PF-3', 'FATTV-121'),
('DV-731', 197, 4752.57, 'PF-3', 'FATTV-131'),
('DV-734', 613, 5504.18, 'PF-3', 'FATTV-134'),
('DV-771', 898, 9333.92, 'PF-3', 'FATTV-171'),
('DV-775', 889, 5460.53, 'PF-3', 'FATTV-175'),
('DV-777', 573, 5181.82, 'PF-3', 'FATTV-177'),
('DV-779', 966, 4669.57, 'PF-3', 'FATTV-179'),
('DV-553', 569, 1505.45, 'PF-4', 'FATTV-253'),
('DV-556', 795, 8128.22, 'PF-4', 'FATTV-256'),
('DV-561', 205, 8437.26, 'PF-4', 'FATTV-261'),
('DV-563', 280, 4597.05, 'PF-4', 'FATTV-263'),
('DV-569', 295, 6126.85, 'PF-4', 'FATTV-269'),
('DV-574', 951, 5612.99, 'PF-4', 'FATTV-274'),
('DV-579', 260, 4210.86, 'PF-4', 'FATTV-279'),
('DV-580', 582, 9933.83, 'PF-4', 'FATTV-280'),
('DV-581', 845, 7156.37, 'PF-4', 'FATTV-281'),
('DV-590', 679, 4695.32, 'PF-4', 'FATTV-290'),
('DV-591', 886, 4330.84, 'PF-4', 'FATTV-291'),
('DV-599', 457, 3429.23, 'PF-4', 'FATTV-299'),
('DV-600', 821, 1613.83, 'PF-4', 'FATTV-300'),
('DV-601', 852, 3789.25, 'PF-4', 'FATTV-1'),
('DV-614', 927, 1870.75, 'PF-4', 'FATTV-14'),
('DV-616', 853, 7677.87, 'PF-4', 'FATTV-16'),
('DV-620', 823, 9442.29, 'PF-4', 'FATTV-20'),
('DV-659', 146, 7761.11, 'PF-4', 'FATTV-59'),
('DV-664', 232, 6781.01, 'PF-4', 'FATTV-64'),
('DV-665', 495, 8391.46, 'PF-4', 'FATTV-65'),
('DV-670', 529, 1187.29, 'PF-4', 'FATTV-70'),
('DV-681', 950, 2254.32, 'PF-4', 'FATTV-81'),
('DV-684', 597, 6503.84, 'PF-4', 'FATTV-84'),
('DV-693', 455, 6061.93, 'PF-4', 'FATTV-93'),
('DV-694', 551, 9962.04, 'PF-4', 'FATTV-94'),
('DV-696', 434, 4315.3, 'PF-4', 'FATTV-96'),
('DV-698', 686, 2520.92, 'PF-4', 'FATTV-98'),
('DV-701', 509, 6537.08, 'PF-4', 'FATTV-101'),
('DV-711', 523, 6350.48, 'PF-4', 'FATTV-111'),
('DV-719', 526, 1874.4, 'PF-4', 'FATTV-119'),
('DV-720', 701, 1585.75, 'PF-4', 'FATTV-120'),
('DV-739', 129, 1746.98, 'PF-4', 'FATTV-139'),
('DV-740', 683, 4624.09, 'PF-4', 'FATTV-140'),
('DV-746', 173, 4285.4, 'PF-4', 'FATTV-146'),
('DV-753', 475, 9859.42, 'PF-4', 'FATTV-153'),
('DV-759', 359, 6391.87, 'PF-4', 'FATTV-159'),
('DV-778', 177, 8001.85, 'PF-4', 'FATTV-178'),
('DV-781', 957, 5944.1, 'PF-4', 'FATTV-181'),
('DV-790', 765, 2588.21, 'PF-4', 'FATTV-190'),
('DV-798', 990, 8820.18, 'PF-4', 'FATTV-198'),
('DV-242', 945, 3184.77, 'PF-4', 'FATTV-242'),
('DV-243', 266, 1299.79, 'PF-4', 'FATTV-243'),
('DV-244', 981, 8204.85, 'PF-4', 'FATTV-244'),
('DV-259', 984, 7800.7, 'PF-4', 'FATTV-259'),
('DV-262', 846, 5511.59, 'PF-4', 'FATTV-262'),
('DV-265', 340, 2738.48, 'PF-4', 'FATTV-265'),
('DV-267', 264, 5706.16, 'PF-4', 'FATTV-267'),
('DV-268', 877, 8427.59, 'PF-4', 'FATTV-268'),
('DV-270', 342, 8358.79, 'PF-4', 'FATTV-270'),
('DV-276', 550, 1269.44, 'PF-4', 'FATTV-276'),
('DV-277', 794, 2593.03, 'PF-4', 'FATTV-277'),
('DV-278', 504, 5513.15, 'PF-4', 'FATTV-278'),
('DV-283', 858, 5740.27, 'PF-4', 'FATTV-283'),
('DV-292', 990, 4760.73, 'PF-4', 'FATTV-292'),
('DV-293', 704, 4406.53, 'PF-4', 'FATTV-293'),
('DV-294', 269, 8248, 'PF-4', 'FATTV-294'),
('DV-302', 552, 8344.59, 'PF-4', 'FATTV-2'),
('DV-305', 776, 1967.02, 'PF-4', 'FATTV-5'),
('DV-308', 606, 7026.19, 'PF-4', 'FATTV-8'),
('DV-309', 325, 1910.48, 'PF-4', 'FATTV-9'),
('DV-310', 149, 9747.02, 'PF-4', 'FATTV-10'),
('DV-313', 698, 7991.55, 'PF-4', 'FATTV-13'),
('DV-322', 964, 3801.88, 'PF-4', 'FATTV-22'),
('DV-327', 712, 7752.66, 'PF-4', 'FATTV-27'),
('DV-331', 819, 1870.36, 'PF-4', 'FATTV-31'),
('DV-335', 765, 8597.84, 'PF-4', 'FATTV-35'),
('DV-336', 561, 4879.99, 'PF-4', 'FATTV-36'),
('DV-342', 495, 6072.25, 'PF-4', 'FATTV-42'),
('DV-350', 446, 6588.37, 'PF-4', 'FATTV-50'),
('DV-352', 683, 1624.14, 'PF-4', 'FATTV-52'),
('DV-355', 620, 4201.19, 'PF-4', 'FATTV-55'),
('DV-357', 416, 1518.11, 'PF-4', 'FATTV-57'),
('DV-367', 949, 9578.58, 'PF-4', 'FATTV-67'),
('DV-374', 822, 5848.38, 'PF-4', 'FATTV-74'),
('DV-375', 224, 1853.91, 'PF-4', 'FATTV-75'),
('DV-376', 448, 6953.54, 'PF-4', 'FATTV-76'),
('DV-389', 637, 8753.55, 'PF-4', 'FATTV-89'),
('DV-392', 385, 9917.27, 'PF-4', 'FATTV-92'),
('DV-399', 113, 4091.9, 'PF-4', 'FATTV-99'),
('DV-403', 783, 1869.83, 'PF-4', 'FATTV-103'),
('DV-407', 199, 1531.27, 'PF-4', 'FATTV-107'),
('DV-410', 130, 4310.85, 'PF-4', 'FATTV-110'),
('DV-413', 942, 5092.26, 'PF-4', 'FATTV-113'),
('DV-426', 173, 4835.29, 'PF-4', 'FATTV-126'),
('DV-428', 809, 9055.59, 'PF-4', 'FATTV-128'),
('DV-435', 364, 5769.93, 'PF-4', 'FATTV-135'),
('DV-436', 785, 4858.12, 'PF-4', 'FATTV-136'),
('DV-457', 487, 8778.85, 'PF-4', 'FATTV-157'),
('DV-458', 635, 7457.3, 'PF-4', 'FATTV-158'),
('DV-461', 127, 3508.84, 'PF-4', 'FATTV-161'),
('DV-464', 646, 9400.28, 'PF-4', 'FATTV-164'),
('DV-485', 676, 9129.52, 'PF-4', 'FATTV-185'),
('DV-487', 553, 9823.3, 'PF-4', 'FATTV-187'),
('DV-495', 923, 7510.99, 'PF-4', 'FATTV-195'),
('DV-499', 751, 9309.43, 'PF-4', 'FATTV-199'),
('DV-500', 750, 8590.43, 'PF-4', 'FATTV-200'),
('DV-517', 985, 4897.83, 'PF-4', 'FATTV-217'),
('DV-519', 646, 1114.69, 'PF-4', 'FATTV-219'),
('DV-525', 897, 7464.29, 'PF-4', 'FATTV-225'),
('DV-528', 480, 8315.63, 'PF-4', 'FATTV-228'),
('DV-532', 798, 1214.98, 'PF-4', 'FATTV-232'),
('DV-541', 388, 6887.32, 'PF-4', 'FATTV-241'),
('DV-546', 983, 2827.65, 'PF-4', 'FATTV-246'),
('DV-550', 860, 3984.05, 'PF-4', 'FATTV-250'),
('DV-4', 658, 6154.25, 'PF-4', 'FATTV-4'),
('DV-6', 760, 7016.53, 'PF-4', 'FATTV-6'),
('DV-7', 540, 8836.37, 'PF-4', 'FATTV-7'),
('DV-12', 364, 2478.76, 'PF-4', 'FATTV-12'),
('DV-17', 584, 4868.83, 'PF-4', 'FATTV-17'),
('DV-18', 925, 6519.54, 'PF-4', 'FATTV-18'),
('DV-25', 345, 9274.85, 'PF-4', 'FATTV-25'),
('DV-30', 588, 4913.97, 'PF-4', 'FATTV-30'),
('DV-39', 365, 2432.05, 'PF-4', 'FATTV-39'),
('DV-40', 748, 3889.34, 'PF-4', 'FATTV-40'),
('DV-41', 592, 6953.31, 'PF-4', 'FATTV-41'),
('DV-43', 366, 4024.93, 'PF-4', 'FATTV-43'),
('DV-44', 349, 1534.69, 'PF-4', 'FATTV-44'),
('DV-49', 740, 7160.41, 'PF-4', 'FATTV-49'),
('DV-51', 233, 4250.73, 'PF-4', 'FATTV-51'),
('DV-53', 227, 7385.16, 'PF-4', 'FATTV-53'),
('DV-61', 946, 4577.83, 'PF-4', 'FATTV-61'),
('DV-62', 979, 5798.64, 'PF-4', 'FATTV-62'),
('DV-68', 190, 7575.29, 'PF-4', 'FATTV-68'),
('DV-73', 314, 9565.48, 'PF-4', 'FATTV-73'),
('DV-80', 625, 9865.65, 'PF-4', 'FATTV-80'),
('DV-82', 199, 8295.67, 'PF-4', 'FATTV-82'),
('DV-90', 129, 1412.42, 'PF-4', 'FATTV-90'),
('DV-95', 445, 4821.86, 'PF-4', 'FATTV-95'),
('DV-105', 489, 7432.77, 'PF-4', 'FATTV-105'),
('DV-112', 858, 8248.66, 'PF-4', 'FATTV-112'),
('DV-115', 783, 4898.14, 'PF-4', 'FATTV-115'),
('DV-121', 693, 7860.17, 'PF-4', 'FATTV-121'),
('DV-124', 230, 4758.68, 'PF-4', 'FATTV-124'),
('DV-129', 976, 1619.25, 'PF-4', 'FATTV-129'),
('DV-134', 995, 5764.43, 'PF-4', 'FATTV-134'),
('DV-143', 632, 1148.43, 'PF-4', 'FATTV-143'),
('DV-147', 159, 2444.85, 'PF-4', 'FATTV-147'),
('DV-148', 488, 7094.1, 'PF-4', 'FATTV-148'),
('DV-149', 419, 8165.84, 'PF-4', 'FATTV-149'),
('DV-150', 157, 8967.92, 'PF-4', 'FATTV-150'),
('DV-151', 820, 2458.24, 'PF-4', 'FATTV-151'),
('DV-154', 140, 3818.26, 'PF-4', 'FATTV-154'),
('DV-155', 229, 1911.17, 'PF-4', 'FATTV-155'),
('DV-165', 463, 4613.82, 'PF-4', 'FATTV-165'),
('DV-166', 276, 1136.86, 'PF-4', 'FATTV-166'),
('DV-167', 476, 7807.25, 'PF-4', 'FATTV-167'),
('DV-169', 388, 4587.68, 'PF-4', 'FATTV-169'),
('DV-172', 390, 7559.17, 'PF-4', 'FATTV-172'),
('DV-174', 934, 8267.71, 'PF-4', 'FATTV-174'),
('DV-177', 117, 5589.84, 'PF-4', 'FATTV-177'),
('DV-180', 835, 7633.37, 'PF-4', 'FATTV-180'),
('DV-182', 534, 4692.92, 'PF-4', 'FATTV-182'),
('DV-186', 965, 2437.29, 'PF-4', 'FATTV-186'),
('DV-189', 223, 3425.7, 'PF-4', 'FATTV-189'),
('DV-194', 600, 3072.01, 'PF-4', 'FATTV-194'),
('DV-196', 709, 2346.85, 'PF-4', 'FATTV-196'),
('DV-197', 848, 3936.76, 'PF-4', 'FATTV-197'),
('DV-202', 247, 9132.76, 'PF-4', 'FATTV-202'),
('DV-204', 348, 6097.18, 'PF-4', 'FATTV-204'),
('DV-206', 758, 6449.7, 'PF-4', 'FATTV-206'),
('DV-212', 946, 4792.3, 'PF-4', 'FATTV-212'),
('DV-215', 452, 8056.58, 'PF-4', 'FATTV-215'),
('DV-221', 280, 4906.15, 'PF-4', 'FATTV-221'),
('DV-227', 257, 2852.24, 'PF-4', 'FATTV-227'),
('DV-229', 933, 3940.63, 'PF-4', 'FATTV-229'),
('DV-230', 561, 5198.73, 'PF-4', 'FATTV-230'),
('DV-233', 849, 5146.27, 'PF-4', 'FATTV-233'),
('DV-236', 711, 5858.26, 'PF-4', 'FATTV-236');
