create table DettaglioAcquisto (
	CodiceDettaglioAcquisto VARCHAR2(10) PRIMARY KEY,
	Quantita INT,
	CostoUnitario DECIMAL(7,2),
	CodiceProdotto VARCHAR2(6),
	NumeroFattura VARCHAR2(9),

	FOREIGN KEY (CodiceProdotto) REFERENCES ProdottoFinito(CodiceProdotto) ON DELETE SET NULL,
	FOREIGN KEY (NumeroFattura) REFERENCES Acquisto(NumeroFattura) ON DELETE SET NULL
);

insert into DettaglioAcquisto (CodiceDettaglioAcquisto, Quantita, CostoUnitario, CodiceProdotto, NumeroFattura) values 
(1, 470, 8090.26, 'PF-004', 'FATTA-22'),
(2, 131, 4207.19, 'PF-004', 'FATTA-32'),
(3, 610, 5617.77, 'PF-002', 'FATTA-11'),
(4, 443, 8985.8, 'PF-003', 'FATTA-41'),
(5, 612, 6884.42, 'PF-004', 'FATTA-6'),
(6, 308, 5065.79, 'PF-003', 'FATTA-74'),
(7, 133, 2225.01, 'PF-002', 'FATTA-59'),
(8, 463, 5545.27, 'PF-004', 'FATTA-82'),
(9, 124, 4787.74, 'PF-001', 'FATTA-72'),
(10, 756, 3471.13, 'PF-001', 'FATTA-12'),
(11, 721, 4865.67, 'PF-004', 'FATTA-34'),
(12, 969, 7546.39, 'PF-003', 'FATTA-51'),
(13, 174, 4034.85, 'PF-001', 'FATTA-78'),
(14, 732, 5520.3, 'PF-001', 'FATTA-59'),
(15, 465, 7124.4, 'PF-004', 'FATTA-24'),
(16, 119, 9520.54, 'PF-003', 'FATTA-74'),
(17, 198, 2264.78, 'PF-002', 'FATTA-52'),
(18, 695, 3692.66, 'PF-003', 'FATTA-99'),
(19, 467, 7504.08, 'PF-003', 'FATTA-49'),
(20, 288, 6603.73, 'PF-004', 'FATTA-84'),
(21, 514, 8829.24, 'PF-004', 'FATTA-25'),
(22, 453, 2484.42, 'PF-001', 'FATTA-75'),
(23, 655, 9250.09, 'PF-003', 'FATTA-30'),
(24, 912, 3532.7, 'PF-004', 'FATTA-38'),
(25, 931, 4226.51, 'PF-001', 'FATTA-96'),
(26, 653, 3057.8, 'PF-003', 'FATTA-71'),
(27, 496, 8137.1, 'PF-004', 'FATTA-47'),
(28, 144, 6687.95, 'PF-004', 'FATTA-38'),
(29, 600, 6182.89, 'PF-004', 'FATTA-95'),
(30, 828, 2939.04, 'PF-001', 'FATTA-93'),
(31, 580, 9916.35, 'PF-002', 'FATTA-70'),
(32, 824, 4142.95, 'PF-002', 'FATTA-86'),
(33, 482, 3182.43, 'PF-004', 'FATTA-6'),
(34, 711, 3938.26, 'PF-003', 'FATTA-68'),
(35, 553, 9995.24, 'PF-002', 'FATTA-98'),
(36, 313, 9764.31, 'PF-003', 'FATTA-100'),
(37, 740, 4906.44, 'PF-002', 'FATTA-14'),
(38, 138, 9766.47, 'PF-003', 'FATTA-15'),
(39, 404, 1280.08, 'PF-001', 'FATTA-87'),
(40, 256, 8971.48, 'PF-004', 'FATTA-71'),
(41, 816, 4461.09, 'PF-004', 'FATTA-97'),
(42, 657, 9802.98, 'PF-001', 'FATTA-86'),
(43, 339, 2133.76, 'PF-002', 'FATTA-61'),
(44, 256, 5964.92, 'PF-002', 'FATTA-17'),
(45, 536, 1715.4, 'PF-003', 'FATTA-31'),
(46, 956, 4712.68, 'PF-002', 'FATTA-58'),
(47, 262, 8022.77, 'PF-003', 'FATTA-42'),
(48, 989, 5014.19, 'PF-003', 'FATTA-44'),
(49, 626, 1539.62, 'PF-002', 'FATTA-36'),
(50, 400, 8900.59, 'PF-004', 'FATTA-74'),
(51, 375, 7445.29, 'PF-002', 'FATTA-64'),
(52, 320, 3757.68, 'PF-001', 'FATTA-92'),
(53, 928, 8174.69, 'PF-002', 'FATTA-45'),
(54, 445, 7466.43, 'PF-003', 'FATTA-45'),
(55, 546, 6744.94, 'PF-004', 'FATTA-79'),
(56, 331, 8218.6, 'PF-002', 'FATTA-69'),
(57, 733, 6679.25, 'PF-002', 'FATTA-17'),
(58, 325, 6269.08, 'PF-002', 'FATTA-33'),
(59, 590, 2296.92, 'PF-003', 'FATTA-31'),
(60, 179, 5313.8, 'PF-003', 'FATTA-9'),
(61, 811, 8750.38, 'PF-004', 'FATTA-26'),
(62, 349, 6527.62, 'PF-003', 'FATTA-41'),
(63, 904, 3486.99, 'PF-002', 'FATTA-60'),
(64, 497, 6359.93, 'PF-001', 'FATTA-33'),
(65, 299, 8194.2, 'PF-001', 'FATTA-43'),
(66, 789, 6741.79, 'PF-002', 'FATTA-15'),
(67, 766, 7540.09, 'PF-001', 'FATTA-100'),
(68, 692, 2069.42, 'PF-002', 'FATTA-93'),
(69, 792, 8230.76, 'PF-001', 'FATTA-42'),
(70, 792, 6196.63, 'PF-003', 'FATTA-19'),
(71, 221, 5497.76, 'PF-002', 'FATTA-46'),
(72, 713, 1531.41, 'PF-002', 'FATTA-71'),
(73, 667, 9443.41, 'PF-003', 'FATTA-4'),
(74, 753, 6901.51, 'PF-004', 'FATTA-37'),
(75, 666, 8065.65, 'PF-002', 'FATTA-75'),
(76, 506, 5424.51, 'PF-001', 'FATTA-91'),
(77, 570, 2013.87, 'PF-001', 'FATTA-87'),
(78, 207, 8319.12, 'PF-004', 'FATTA-76'),
(79, 616, 5612.62, 'PF-002', 'FATTA-100'),
(80, 103, 9647.38, 'PF-004', 'FATTA-97'),
(81, 431, 6803.04, 'PF-004', 'FATTA-37'),
(82, 523, 4136.01, 'PF-001', 'FATTA-26'),
(83, 338, 1801.57, 'PF-001', 'FATTA-98'),
(84, 117, 8984.72, 'PF-002', 'FATTA-77'),
(85, 612, 7088.34, 'PF-001', 'FATTA-45'),
(86, 488, 6011.52, 'PF-002', 'FATTA-82'),
(87, 541, 5217.6, 'PF-002', 'FATTA-6'),
(88, 399, 6442.22, 'PF-003', 'FATTA-92'),
(89, 118, 1206.97, 'PF-003', 'FATTA-46'),
(90, 161, 2491.64, 'PF-001', 'FATTA-15'),
(91, 814, 3365.62, 'PF-003', 'FATTA-47'),
(92, 634, 5942.22, 'PF-002', 'FATTA-54'),
(93, 514, 5925.99, 'PF-004', 'FATTA-89'),
(94, 884, 9604.77, 'PF-004', 'FATTA-87'),
(95, 582, 7458.95, 'PF-001', 'FATTA-45'),
(96, 621, 4127.87, 'PF-004', 'FATTA-51'),
(97, 972, 7253.26, 'PF-004', 'FATTA-83'),
(98, 289, 8423.66, 'PF-003', 'FATTA-23'),
(99, 252, 2349.57, 'PF-002', 'FATTA-33'),
(100, 334, 5939.73, 'PF-002', 'FATTA-28'),
(101, 980, 4788.83, 'PF-001', 'FATTA-44'),
(102, 375, 5031.83, 'PF-003', 'FATTA-3'),
(103, 820, 4379.59, 'PF-003', 'FATTA-49'),
(104, 781, 1593.36, 'PF-003', 'FATTA-26'),
(105, 147, 6566.55, 'PF-002', 'FATTA-100'),
(106, 475, 5048.03, 'PF-001', 'FATTA-6'),
(107, 635, 5761.81, 'PF-002', 'FATTA-66'),
(108, 759, 1312.92, 'PF-004', 'FATTA-58'),
(109, 666, 7217.94, 'PF-001', 'FATTA-1'),
(110, 161, 8819.56, 'PF-004', 'FATTA-78'),
(111, 570, 4798.68, 'PF-004', 'FATTA-72'),
(112, 385, 4045.8, 'PF-004', 'FATTA-5'),
(113, 514, 9356.69, 'PF-004', 'FATTA-3'),
(114, 466, 6454.67, 'PF-003', 'FATTA-24'),
(115, 344, 2064.87, 'PF-001', 'FATTA-30'),
(116, 608, 8104.19, 'PF-003', 'FATTA-57'),
(117, 846, 6783.51, 'PF-001', 'FATTA-77'),
(118, 866, 1748.49, 'PF-003', 'FATTA-94'),
(119, 580, 8016.67, 'PF-004', 'FATTA-42'),
(120, 720, 3116.49, 'PF-004', 'FATTA-88'),
(121, 927, 1244.73, 'PF-003', 'FATTA-58'),
(122, 149, 2462.98, 'PF-002', 'FATTA-63'),
(123, 557, 8112.73, 'PF-004', 'FATTA-81'),
(124, 720, 5472.76, 'PF-001', 'FATTA-36'),
(125, 937, 7310.1, 'PF-004', 'FATTA-41'),
(126, 181, 5562.13, 'PF-001', 'FATTA-50'),
(127, 686, 3127.83, 'PF-001', 'FATTA-32'),
(128, 389, 7897.25, 'PF-004', 'FATTA-73'),
(129, 113, 9298.19, 'PF-004', 'FATTA-98'),
(130, 397, 5415.15, 'PF-001', 'FATTA-76'),
(131, 414, 2341.49, 'PF-001', 'FATTA-61'),
(132, 679, 2982.23, 'PF-004', 'FATTA-12'),
(133, 342, 6013.98, 'PF-001', 'FATTA-87'),
(134, 633, 8619.13, 'PF-001', 'FATTA-32'),
(135, 489, 7865.89, 'PF-004', 'FATTA-77'),
(136, 220, 6899.85, 'PF-001', 'FATTA-58'),
(137, 710, 7582.82, 'PF-003', 'FATTA-59'),
(138, 526, 6256.84, 'PF-003', 'FATTA-61'),
(139, 999, 7848.16, 'PF-004', 'FATTA-4'),
(140, 221, 8076.5, 'PF-003', 'FATTA-31'),
(141, 646, 6147.05, 'PF-003', 'FATTA-2'),
(142, 417, 1141.54, 'PF-001', 'FATTA-11'),
(143, 719, 1058.98, 'PF-003', 'FATTA-68'),
(144, 897, 7264.26, 'PF-002', 'FATTA-93'),
(145, 777, 9872.64, 'PF-003', 'FATTA-53'),
(146, 526, 8119.84, 'PF-001', 'FATTA-91'),
(147, 214, 3119.34, 'PF-001', 'FATTA-81'),
(148, 640, 9435.1, 'PF-003', 'FATTA-60'),
(149, 658, 7930.76, 'PF-003', 'FATTA-83'),
(150, 989, 9970.52, 'PF-004', 'FATTA-74'),
(151, 526, 5845.45, 'PF-004', 'FATTA-43'),
(152, 563, 6506.8, 'PF-003', 'FATTA-68'),
(153, 281, 6307.75, 'PF-002', 'FATTA-66'),
(154, 834, 9343.37, 'PF-002', 'FATTA-81'),
(155, 470, 8018.55, 'PF-004', 'FATTA-81'),
(156, 914, 4438.27, 'PF-004', 'FATTA-21'),
(157, 241, 3481.77, 'PF-003', 'FATTA-6'),
(158, 709, 7710.46, 'PF-001', 'FATTA-11'),
(159, 120, 5321.46, 'PF-001', 'FATTA-34'),
(160, 934, 5915.5, 'PF-002', 'FATTA-52'),
(161, 157, 7147.66, 'PF-004', 'FATTA-4'),
(162, 528, 9409.89, 'PF-004', 'FATTA-36'),
(163, 516, 6726.66, 'PF-003', 'FATTA-30'),
(164, 405, 6136.21, 'PF-002', 'FATTA-99'),
(165, 643, 7707.61, 'PF-002', 'FATTA-84'),
(166, 143, 8085.39, 'PF-002', 'FATTA-66'),
(167, 923, 5727.5, 'PF-004', 'FATTA-23'),
(168, 741, 9178.28, 'PF-003', 'FATTA-98'),
(169, 744, 5744.45, 'PF-002', 'FATTA-53'),
(170, 317, 2837.98, 'PF-004', 'FATTA-34'),
(171, 734, 8882.21, 'PF-001', 'FATTA-73'),
(172, 865, 9908.61, 'PF-003', 'FATTA-70'),
(173, 886, 3461.39, 'PF-002', 'FATTA-39'),
(174, 717, 1901.46, 'PF-003', 'FATTA-94'),
(175, 961, 4965.0, 'PF-002', 'FATTA-47'),
(176, 540, 1005.5, 'PF-004', 'FATTA-75'),
(177, 105, 5454.28, 'PF-004', 'FATTA-63'),
(178, 130, 6713.18, 'PF-002', 'FATTA-90'),
(179, 567, 1723.16, 'PF-001', 'FATTA-20'),
(180, 459, 8187.3, 'PF-001', 'FATTA-63'),
(181, 940, 7908.5, 'PF-004', 'FATTA-7'),
(182, 262, 1374.99, 'PF-003', 'FATTA-1'),
(183, 167, 8022.57, 'PF-002', 'FATTA-46'),
(184, 596, 4307.34, 'PF-002', 'FATTA-84'),
(185, 295, 6314.71, 'PF-003', 'FATTA-68'),
(186, 686, 3537.97, 'PF-003', 'FATTA-47'),
(187, 542, 9683.0, 'PF-004', 'FATTA-62'),
(188, 103, 1928.62, 'PF-004', 'FATTA-18'),
(189, 598, 9529.67, 'PF-001', 'FATTA-74'),
(190, 708, 8665.66, 'PF-002', 'FATTA-56'),
(191, 155, 8613.18, 'PF-003', 'FATTA-30'),
(192, 915, 8085.69, 'PF-002', 'FATTA-68'),
(193, 411, 7014.53, 'PF-002', 'FATTA-57'),
(194, 372, 1632.75, 'PF-003', 'FATTA-77'),
(195, 564, 4868.28, 'PF-004', 'FATTA-85'),
(196, 774, 1795.55, 'PF-003', 'FATTA-80'),
(197, 563, 9984.35, 'PF-003', 'FATTA-85'),
(198, 844, 8997.91, 'PF-001', 'FATTA-43'),
(199, 855, 6775.78, 'PF-002', 'FATTA-51'),
(200, 278, 9954.28, 'PF-004', 'FATTA-22'),
(201, 133, 7926.98, 'PF-003', 'FATTA-52'),
(202, 628, 6822.37, 'PF-004', 'FATTA-37'),
(203, 570, 9887.69, 'PF-002', 'FATTA-41'),
(204, 801, 3476.36, 'PF-004', 'FATTA-47'),
(205, 293, 8432.64, 'PF-004', 'FATTA-47'),
(206, 290, 6943.07, 'PF-002', 'FATTA-78'),
(207, 766, 2764.96, 'PF-003', 'FATTA-45'),
(208, 554, 7647.8, 'PF-001', 'FATTA-22'),
(209, 151, 8497.38, 'PF-001', 'FATTA-83'),
(210, 723, 7118.18, 'PF-002', 'FATTA-49'),
(211, 927, 7344.66, 'PF-003', 'FATTA-13'),
(212, 823, 6773.34, 'PF-002', 'FATTA-78'),
(213, 235, 5532.96, 'PF-003', 'FATTA-59'),
(214, 708, 8602.88, 'PF-004', 'FATTA-47'),
(215, 263, 4619.85, 'PF-001', 'FATTA-74'),
(216, 874, 8858.17, 'PF-002', 'FATTA-4'),
(217, 417, 3883.51, 'PF-001', 'FATTA-43'),
(218, 387, 4612.76, 'PF-001', 'FATTA-94'),
(219, 459, 7720.2, 'PF-004', 'FATTA-68'),
(220, 171, 1578.24, 'PF-003', 'FATTA-57'),
(221, 530, 2298.66, 'PF-002', 'FATTA-53'),
(222, 214, 7348.28, 'PF-003', 'FATTA-19'),
(223, 181, 6636.21, 'PF-001', 'FATTA-37'),
(224, 275, 8147.35, 'PF-003', 'FATTA-36'),
(225, 343, 8576.78, 'PF-004', 'FATTA-69'),
(226, 557, 4434.35, 'PF-004', 'FATTA-32'),
(227, 979, 7073.65, 'PF-002', 'FATTA-25'),
(228, 582, 1949.62, 'PF-004', 'FATTA-84'),
(229, 248, 1871.36, 'PF-003', 'FATTA-10'),
(230, 417, 3377.39, 'PF-002', 'FATTA-82'),
(231, 343, 7412.07, 'PF-003', 'FATTA-62'),
(232, 736, 5542.54, 'PF-001', 'FATTA-58'),
(233, 334, 7611.17, 'PF-002', 'FATTA-49'),
(234, 332, 8944.16, 'PF-004', 'FATTA-64'),
(235, 907, 5929.72, 'PF-002', 'FATTA-1'),
(236, 879, 8629.11, 'PF-001', 'FATTA-66'),
(237, 115, 8976.75, 'PF-004', 'FATTA-43'),
(238, 487, 1086.61, 'PF-002', 'FATTA-92'),
(239, 627, 6373.56, 'PF-004', 'FATTA-70'),
(240, 897, 5217.37, 'PF-003', 'FATTA-59'),
(241, 920, 6499.43, 'PF-002', 'FATTA-90'),
(242, 670, 9780.15, 'PF-002', 'FATTA-3'),
(243, 305, 7943.97, 'PF-003', 'FATTA-42'),
(244, 638, 9294.73, 'PF-001', 'FATTA-37'),
(245, 575, 8913.63, 'PF-004', 'FATTA-84'),
(246, 273, 9783.39, 'PF-002', 'FATTA-83'),
(247, 138, 6293.7, 'PF-001', 'FATTA-80'),
(248, 854, 9360.57, 'PF-002', 'FATTA-52'),
(249, 657, 8383.6, 'PF-004', 'FATTA-32'),
(250, 130, 3228.1, 'PF-002', 'FATTA-22'),
(251, 544, 8844.64, 'PF-003', 'FATTA-7'),
(252, 186, 1297.88, 'PF-001', 'FATTA-3'),
(253, 972, 5911.27, 'PF-004', 'FATTA-46'),
(254, 446, 7939.64, 'PF-003', 'FATTA-55'),
(255, 279, 8681.01, 'PF-002', 'FATTA-40'),
(256, 437, 5677.52, 'PF-001', 'FATTA-19'),
(257, 455, 4470.69, 'PF-001', 'FATTA-95'),
(258, 353, 2582.29, 'PF-002', 'FATTA-88'),
(259, 416, 8999.37, 'PF-004', 'FATTA-62'),
(260, 281, 6828.96, 'PF-003', 'FATTA-52'),
(261, 743, 7673.04, 'PF-001', 'FATTA-25'),
(262, 809, 2975.13, 'PF-002', 'FATTA-79'),
(263, 741, 4947.89, 'PF-001', 'FATTA-98'),
(264, 446, 6404.25, 'PF-003', 'FATTA-72'),
(265, 754, 4852.71, 'PF-004', 'FATTA-8'),
(266, 675, 3051.56, 'PF-003', 'FATTA-16'),
(267, 796, 8867.08, 'PF-004', 'FATTA-54'),
(268, 574, 7620.34, 'PF-004', 'FATTA-47'),
(269, 659, 8549.36, 'PF-002', 'FATTA-71'),
(270, 671, 3964.97, 'PF-003', 'FATTA-75'),
(271, 807, 7900.57, 'PF-002', 'FATTA-63'),
(272, 738, 5234.56, 'PF-001', 'FATTA-79'),
(273, 683, 9532.17, 'PF-004', 'FATTA-48'),
(274, 207, 7161.12, 'PF-002', 'FATTA-87'),
(275, 705, 8662.11, 'PF-003', 'FATTA-21'),
(276, 746, 3669.59, 'PF-002', 'FATTA-10'),
(277, 999, 8394.11, 'PF-003', 'FATTA-99'),
(278, 401, 7764.21, 'PF-004', 'FATTA-73'),
(279, 108, 4726.4, 'PF-004', 'FATTA-52'),
(280, 861, 3617.02, 'PF-003', 'FATTA-63'),
(281, 975, 8374.66, 'PF-004', 'FATTA-84'),
(282, 775, 2006.09, 'PF-004', 'FATTA-15'),
(283, 759, 4745.54, 'PF-002', 'FATTA-83'),
(284, 818, 2260.41, 'PF-004', 'FATTA-50'),
(285, 867, 6634.02, 'PF-001', 'FATTA-79'),
(286, 758, 9777.4, 'PF-003', 'FATTA-25'),
(287, 329, 4555.82, 'PF-003', 'FATTA-36'),
(288, 204, 1386.82, 'PF-002', 'FATTA-17'),
(289, 983, 6398.55, 'PF-004', 'FATTA-88'),
(290, 410, 7802.68, 'PF-004', 'FATTA-15'),
(291, 358, 6626.16, 'PF-004', 'FATTA-58'),
(292, 724, 1010.89, 'PF-001', 'FATTA-68'),
(293, 470, 8104.51, 'PF-004', 'FATTA-39'),
(294, 141, 6660.98, 'PF-003', 'FATTA-4'),
(295, 885, 1133.4, 'PF-003', 'FATTA-85'),
(296, 298, 4093.65, 'PF-001', 'FATTA-61'),
(297, 678, 2265.99, 'PF-001', 'FATTA-2'),
(298, 268, 9882.01, 'PF-001', 'FATTA-46'),
(299, 256, 4314.2, 'PF-002', 'FATTA-90'),
(300, 342, 9420.62, 'PF-003', 'FATTA-13'),
(301, 724, 8867.39, 'PF-004', 'FATTA-77'),
(302, 232, 1208.94, 'PF-002', 'FATTA-52'),
(303, 538, 7143.31, 'PF-002', 'FATTA-85'),
(304, 275, 7002.43, 'PF-004', 'FATTA-4'),
(305, 776, 4202.76, 'PF-004', 'FATTA-18'),
(306, 358, 6808.46, 'PF-003', 'FATTA-79'),
(307, 578, 3799.94, 'PF-001', 'FATTA-88'),
(308, 344, 8140.89, 'PF-002', 'FATTA-51'),
(309, 417, 1641.54, 'PF-003', 'FATTA-39'),
(310, 332, 2673.25, 'PF-003', 'FATTA-50'),
(311, 239, 3050.76, 'PF-003', 'FATTA-36'),
(312, 915, 1947.07, 'PF-001', 'FATTA-100'),
(313, 527, 8852.94, 'PF-003', 'FATTA-63'),
(314, 564, 4233.0, 'PF-001', 'FATTA-57'),
(315, 566, 9681.67, 'PF-003', 'FATTA-28'),
(316, 959, 7959.72, 'PF-004', 'FATTA-7'),
(317, 262, 2237.66, 'PF-002', 'FATTA-3'),
(318, 185, 3858.85, 'PF-004', 'FATTA-97'),
(319, 804, 8066.01, 'PF-004', 'FATTA-7'),
(320, 683, 3497.36, 'PF-002', 'FATTA-57'),
(321, 753, 7321.15, 'PF-004', 'FATTA-35'),
(322, 934, 8342.8, 'PF-003', 'FATTA-53'),
(323, 652, 8009.83, 'PF-003', 'FATTA-76'),
(324, 161, 9648.0, 'PF-003', 'FATTA-66'),
(325, 259, 7240.42, 'PF-001', 'FATTA-93'),
(326, 834, 8521.86, 'PF-001', 'FATTA-25'),
(327, 107, 1149.67, 'PF-003', 'FATTA-66'),
(328, 478, 2970.03, 'PF-004', 'FATTA-47'),
(329, 608, 3367.04, 'PF-002', 'FATTA-50'),
(330, 614, 3911.88, 'PF-002', 'FATTA-34'),
(331, 746, 8762.93, 'PF-002', 'FATTA-20'),
(332, 213, 9360.46, 'PF-004', 'FATTA-24'),
(333, 414, 2751.73, 'PF-004', 'FATTA-24'),
(334, 370, 9763.6, 'PF-002', 'FATTA-94'),
(335, 144, 2474.55, 'PF-001', 'FATTA-34'),
(336, 543, 9556.49, 'PF-004', 'FATTA-4'),
(337, 930, 1728.49, 'PF-002', 'FATTA-45'),
(338, 453, 4478.37, 'PF-004', 'FATTA-95'),
(339, 426, 5162.81, 'PF-004', 'FATTA-77'),
(340, 524, 6698.28, 'PF-004', 'FATTA-45'),
(341, 782, 9608.26, 'PF-004', 'FATTA-37'),
(342, 589, 2437.88, 'PF-001', 'FATTA-41'),
(343, 657, 3305.24, 'PF-004', 'FATTA-17'),
(344, 695, 8943.31, 'PF-004', 'FATTA-31'),
(345, 510, 1485.58, 'PF-001', 'FATTA-16'),
(346, 140, 6444.62, 'PF-003', 'FATTA-98'),
(347, 605, 4524.75, 'PF-002', 'FATTA-66'),
(348, 616, 3974.59, 'PF-004', 'FATTA-48'),
(349, 679, 3410.34, 'PF-004', 'FATTA-86'),
(350, 894, 2686.55, 'PF-001', 'FATTA-5'),
(351, 801, 9775.01, 'PF-004', 'FATTA-8'),
(352, 447, 4409.32, 'PF-001', 'FATTA-100'),
(353, 496, 2536.31, 'PF-002', 'FATTA-9'),
(354, 121, 1107.97, 'PF-003', 'FATTA-80'),
(355, 320, 7042.13, 'PF-003', 'FATTA-10'),
(356, 804, 5916.99, 'PF-002', 'FATTA-71'),
(357, 284, 7123.66, 'PF-003', 'FATTA-39'),
(358, 971, 1660.47, 'PF-001', 'FATTA-35'),
(359, 354, 3892.6, 'PF-002', 'FATTA-99'),
(360, 688, 1277.06, 'PF-002', 'FATTA-68'),
(361, 849, 6580.05, 'PF-003', 'FATTA-28'),
(362, 109, 5937.91, 'PF-001', 'FATTA-19'),
(363, 620, 4506.21, 'PF-002', 'FATTA-96'),
(364, 387, 2368.76, 'PF-003', 'FATTA-90'),
(365, 360, 7383.76, 'PF-001', 'FATTA-42'),
(366, 741, 1777.34, 'PF-004', 'FATTA-42'),
(367, 760, 9675.53, 'PF-004', 'FATTA-95'),
(368, 215, 6560.52, 'PF-001', 'FATTA-35'),
(369, 757, 4048.95, 'PF-004', 'FATTA-4'),
(370, 776, 2637.97, 'PF-002', 'FATTA-79'),
(371, 299, 1817.82, 'PF-003', 'FATTA-49'),
(372, 376, 3885.28, 'PF-001', 'FATTA-21'),
(373, 938, 8100.0, 'PF-003', 'FATTA-34'),
(374, 393, 1651.2, 'PF-003', 'FATTA-3'),
(375, 530, 4300.35, 'PF-004', 'FATTA-37'),
(376, 300, 4007.08, 'PF-004', 'FATTA-84'),
(377, 804, 8022.83, 'PF-004', 'FATTA-52'),
(378, 168, 4644.62, 'PF-001', 'FATTA-58'),
(379, 692, 4265.25, 'PF-001', 'FATTA-86'),
(380, 980, 4940.27, 'PF-001', 'FATTA-14'),
(381, 172, 5761.15, 'PF-001', 'FATTA-64'),
(382, 851, 9449.04, 'PF-002', 'FATTA-46'),
(383, 577, 1125.78, 'PF-003', 'FATTA-74'),
(384, 427, 2771.39, 'PF-002', 'FATTA-12'),
(385, 463, 3228.38, 'PF-004', 'FATTA-37'),
(386, 250, 4870.08, 'PF-003', 'FATTA-72'),
(387, 619, 6985.79, 'PF-003', 'FATTA-11'),
(388, 373, 7379.53, 'PF-004', 'FATTA-41'),
(389, 710, 9530.07, 'PF-004', 'FATTA-39'),
(390, 796, 6978.62, 'PF-003', 'FATTA-22'),
(391, 164, 8530.6, 'PF-002', 'FATTA-1'),
(392, 634, 3563.9, 'PF-001', 'FATTA-77'),
(393, 709, 3177.33, 'PF-004', 'FATTA-63'),
(394, 787, 4499.18, 'PF-001', 'FATTA-27'),
(395, 634, 3885.33, 'PF-001', 'FATTA-11'),
(396, 245, 3236.65, 'PF-002', 'FATTA-93'),
(397, 514, 6741.04, 'PF-002', 'FATTA-34'),
(398, 377, 7416.74, 'PF-004', 'FATTA-88'),
(399, 886, 6019.06, 'PF-003', 'FATTA-76'),
(400, 435, 6073.85, 'PF-003', 'FATTA-41'),
(401, 622, 8802.39, 'PF-001', 'FATTA-74'),
(402, 503, 2111.79, 'PF-002', 'FATTA-66'),
(403, 394, 1925.92, 'PF-004', 'FATTA-35'),
(404, 349, 7330.63, 'PF-003', 'FATTA-40'),
(405, 171, 7706.18, 'PF-004', 'FATTA-33'),
(406, 130, 5000.89, 'PF-001', 'FATTA-58'),
(407, 482, 2913.5, 'PF-004', 'FATTA-8'),
(408, 946, 1564.68, 'PF-004', 'FATTA-70'),
(409, 879, 1163.6, 'PF-001', 'FATTA-18'),
(410, 908, 1682.35, 'PF-003', 'FATTA-12'),
(411, 167, 9204.64, 'PF-001', 'FATTA-65'),
(412, 245, 3093.23, 'PF-003', 'FATTA-93'),
(413, 227, 2957.99, 'PF-002', 'FATTA-100'),
(414, 587, 1413.45, 'PF-004', 'FATTA-87'),
(415, 881, 8436.49, 'PF-003', 'FATTA-58'),
(416, 308, 1548.43, 'PF-001', 'FATTA-22'),
(417, 360, 9953.06, 'PF-004', 'FATTA-29'),
(418, 217, 5283.65, 'PF-004', 'FATTA-50'),
(419, 422, 2685.43, 'PF-003', 'FATTA-22'),
(420, 341, 5279.31, 'PF-003', 'FATTA-44'),
(421, 241, 7945.18, 'PF-002', 'FATTA-64'),
(422, 262, 2493.1, 'PF-001', 'FATTA-5'),
(423, 215, 8419.53, 'PF-003', 'FATTA-24'),
(424, 255, 8932.41, 'PF-001', 'FATTA-81'),
(425, 773, 6694.9, 'PF-002', 'FATTA-76'),
(426, 516, 7208.02, 'PF-002', 'FATTA-23'),
(427, 213, 3983.68, 'PF-001', 'FATTA-95'),
(428, 745, 2351.92, 'PF-003', 'FATTA-88'),
(429, 983, 9654.03, 'PF-003', 'FATTA-63'),
(430, 207, 2478.38, 'PF-001', 'FATTA-95'),
(431, 534, 7108.02, 'PF-001', 'FATTA-82'),
(432, 681, 3809.46, 'PF-003', 'FATTA-17'),
(433, 560, 1470.86, 'PF-004', 'FATTA-11'),
(434, 659, 2806.28, 'PF-003', 'FATTA-80'),
(435, 163, 3586.75, 'PF-001', 'FATTA-85'),
(436, 727, 5265.8, 'PF-002', 'FATTA-57'),
(437, 562, 6978.73, 'PF-002', 'FATTA-79'),
(438, 357, 3565.86, 'PF-004', 'FATTA-16'),
(439, 225, 1077.11, 'PF-004', 'FATTA-41'),
(440, 531, 6340.67, 'PF-001', 'FATTA-7'),
(441, 151, 1471.34, 'PF-004', 'FATTA-75'),
(442, 209, 6952.04, 'PF-003', 'FATTA-88'),
(443, 406, 1710.44, 'PF-003', 'FATTA-99'),
(444, 835, 7981.99, 'PF-004', 'FATTA-49'),
(445, 968, 3948.12, 'PF-004', 'FATTA-92'),
(446, 985, 5392.39, 'PF-003', 'FATTA-16'),
(447, 196, 7390.07, 'PF-001', 'FATTA-60'),
(448, 486, 1091.77, 'PF-003', 'FATTA-99'),
(449, 555, 6218.73, 'PF-003', 'FATTA-80'),
(450, 893, 7729.84, 'PF-002', 'FATTA-89'),
(451, 150, 8829.17, 'PF-003', 'FATTA-94'),
(452, 825, 8080.34, 'PF-001', 'FATTA-85'),
(453, 199, 8669.28, 'PF-001', 'FATTA-73'),
(454, 343, 2977.42, 'PF-003', 'FATTA-45'),
(455, 186, 3108.44, 'PF-003', 'FATTA-82'),
(456, 625, 9054.04, 'PF-002', 'FATTA-42'),
(457, 780, 6316.55, 'PF-001', 'FATTA-68'),
(458, 580, 3180.5, 'PF-001', 'FATTA-3'),
(459, 559, 9690.5, 'PF-001', 'FATTA-55'),
(460, 354, 6988.25, 'PF-001', 'FATTA-27'),
(461, 434, 7634.12, 'PF-002', 'FATTA-77'),
(462, 427, 3363.04, 'PF-003', 'FATTA-25'),
(463, 968, 2077.11, 'PF-002', 'FATTA-99'),
(464, 960, 3431.02, 'PF-004', 'FATTA-69'),
(465, 925, 7124.87, 'PF-004', 'FATTA-1'),
(466, 234, 6414.44, 'PF-004', 'FATTA-44'),
(467, 768, 5891.29, 'PF-003', 'FATTA-13'),
(468, 527, 5808.01, 'PF-004', 'FATTA-10'),
(469, 540, 4466.39, 'PF-004', 'FATTA-31'),
(470, 320, 2002.43, 'PF-002', 'FATTA-36'),
(471, 567, 2333.67, 'PF-002', 'FATTA-75'),
(472, 828, 9111.82, 'PF-004', 'FATTA-55'),
(473, 495, 4056.21, 'PF-004', 'FATTA-69'),
(474, 896, 8121.78, 'PF-002', 'FATTA-30'),
(475, 338, 6526.88, 'PF-004', 'FATTA-93'),
(476, 513, 4046.16, 'PF-004', 'FATTA-71'),
(477, 460, 3152.67, 'PF-001', 'FATTA-10'),
(478, 877, 7024.95, 'PF-001', 'FATTA-31'),
(479, 744, 4203.65, 'PF-004', 'FATTA-16'),
(480, 317, 1435.22, 'PF-002', 'FATTA-40'),
(481, 739, 3255.68, 'PF-004', 'FATTA-84'),
(482, 319, 1842.22, 'PF-003', 'FATTA-20'),
(483, 444, 6903.81, 'PF-004', 'FATTA-45'),
(484, 925, 6211.13, 'PF-002', 'FATTA-6'),
(485, 894, 5123.3, 'PF-003', 'FATTA-51'),
(486, 892, 8290.89, 'PF-002', 'FATTA-75'),
(487, 948, 8847.27, 'PF-001', 'FATTA-50'),
(488, 715, 4120.55, 'PF-002', 'FATTA-9'),
(489, 786, 9388.32, 'PF-001', 'FATTA-5'),
(490, 523, 1182.06, 'PF-003', 'FATTA-86'),
(491, 136, 9919.37, 'PF-002', 'FATTA-74'),
(492, 699, 9312.35, 'PF-002', 'FATTA-53'),
(493, 186, 6719.69, 'PF-003', 'FATTA-83'),
(494, 225, 1011.31, 'PF-001', 'FATTA-56'),
(495, 120, 5210.19, 'PF-004', 'FATTA-99'),
(496, 895, 7106.5, 'PF-001', 'FATTA-2'),
(497, 175, 4521.61, 'PF-002', 'FATTA-19'),
(498, 921, 2775.82, 'PF-004', 'FATTA-61'),
(499, 744, 7576.78, 'PF-002', 'FATTA-96'),
(500, 322, 2238.52, 'PF-003', 'FATTA-68'),
(501, 190, 6489.49, 'PF-003', 'FATTA-69'),
(502, 666, 1323.24, 'PF-001', 'FATTA-85'),
(503, 892, 8093.15, 'PF-003', 'FATTA-98'),
(504, 865, 5354.21, 'PF-001', 'FATTA-36'),
(505, 944, 7298.06, 'PF-003', 'FATTA-72'),
(506, 715, 9216.28, 'PF-001', 'FATTA-82'),
(507, 351, 9183.09, 'PF-002', 'FATTA-35'),
(508, 209, 1906.29, 'PF-003', 'FATTA-72'),
(509, 556, 7211.55, 'PF-004', 'FATTA-49'),
(510, 230, 1955.02, 'PF-004', 'FATTA-20'),
(511, 336, 9407.13, 'PF-003', 'FATTA-25'),
(512, 234, 8856.27, 'PF-001', 'FATTA-84'),
(513, 619, 1710.55, 'PF-004', 'FATTA-89'),
(514, 998, 5635.6, 'PF-003', 'FATTA-62'),
(515, 608, 7696.57, 'PF-003', 'FATTA-100'),
(516, 172, 1549.76, 'PF-003', 'FATTA-94'),
(517, 898, 3349.28, 'PF-001', 'FATTA-34'),
(518, 594, 8342.15, 'PF-003', 'FATTA-5'),
(519, 811, 3327.45, 'PF-001', 'FATTA-26'),
(520, 105, 9449.88, 'PF-003', 'FATTA-96'),
(521, 195, 6616.68, 'PF-004', 'FATTA-29'),
(522, 539, 2936.32, 'PF-004', 'FATTA-18'),
(523, 929, 3157.13, 'PF-002', 'FATTA-52'),
(524, 809, 9998.58, 'PF-002', 'FATTA-71'),
(525, 134, 3769.38, 'PF-004', 'FATTA-54'),
(526, 957, 1193.91, 'PF-004', 'FATTA-52'),
(527, 821, 2146.85, 'PF-002', 'FATTA-61'),
(528, 935, 2751.51, 'PF-002', 'FATTA-90'),
(529, 798, 6681.83, 'PF-003', 'FATTA-69'),
(530, 496, 1952.65, 'PF-004', 'FATTA-56'),
(531, 795, 9628.8, 'PF-001', 'FATTA-22'),
(532, 225, 3181.38, 'PF-003', 'FATTA-47'),
(533, 350, 6513.11, 'PF-001', 'FATTA-67'),
(534, 828, 1111.41, 'PF-003', 'FATTA-84'),
(535, 620, 3502.2, 'PF-003', 'FATTA-6'),
(536, 552, 7668.6, 'PF-002', 'FATTA-29'),
(537, 611, 9062.56, 'PF-001', 'FATTA-21'),
(538, 264, 3151.61, 'PF-003', 'FATTA-90'),
(539, 417, 4930.27, 'PF-004', 'FATTA-20'),
(540, 873, 7613.64, 'PF-004', 'FATTA-3'),
(541, 379, 2402.73, 'PF-002', 'FATTA-62'),
(542, 282, 6864.79, 'PF-002', 'FATTA-30'),
(543, 471, 7385.66, 'PF-004', 'FATTA-82'),
(544, 551, 8057.51, 'PF-004', 'FATTA-81'),
(545, 902, 6267.63, 'PF-001', 'FATTA-85'),
(546, 830, 1955.32, 'PF-004', 'FATTA-31'),
(547, 906, 9909.74, 'PF-004', 'FATTA-71'),
(548, 894, 7286.3, 'PF-004', 'FATTA-35'),
(549, 858, 3333.88, 'PF-001', 'FATTA-66'),
(550, 579, 9723.37, 'PF-002', 'FATTA-7'),
(551, 255, 7871.06, 'PF-001', 'FATTA-70'),
(552, 691, 1755.06, 'PF-002', 'FATTA-97'),
(553, 907, 6526.1, 'PF-003', 'FATTA-50'),
(554, 871, 5174.39, 'PF-003', 'FATTA-62'),
(555, 177, 5836.15, 'PF-002', 'FATTA-54'),
(556, 106, 3766.13, 'PF-002', 'FATTA-92'),
(557, 516, 2563.81, 'PF-003', 'FATTA-47'),
(558, 554, 8172.67, 'PF-004', 'FATTA-73'),
(559, 845, 7554.82, 'PF-002', 'FATTA-27'),
(560, 728, 4918.77, 'PF-002', 'FATTA-2'),
(561, 365, 3261.65, 'PF-003', 'FATTA-23'),
(562, 398, 4987.62, 'PF-003', 'FATTA-63'),
(563, 457, 5029.58, 'PF-004', 'FATTA-44'),
(564, 372, 1869.11, 'PF-004', 'FATTA-38'),
(565, 446, 7997.16, 'PF-002', 'FATTA-9'),
(566, 236, 3035.17, 'PF-004', 'FATTA-44'),
(567, 928, 7076.82, 'PF-001', 'FATTA-100'),
(568, 790, 3106.19, 'PF-004', 'FATTA-21'),
(569, 240, 9500.38, 'PF-003', 'FATTA-84'),
(570, 432, 9846.86, 'PF-004', 'FATTA-89'),
(571, 901, 5607.47, 'PF-003', 'FATTA-12'),
(572, 126, 2178.03, 'PF-003', 'FATTA-22'),
(573, 800, 6290.22, 'PF-002', 'FATTA-62'),
(574, 662, 7879.28, 'PF-003', 'FATTA-59'),
(575, 321, 8574.03, 'PF-002', 'FATTA-10'),
(576, 408, 7079.73, 'PF-004', 'FATTA-37'),
(577, 480, 1902.18, 'PF-001', 'FATTA-52'),
(578, 246, 7641.43, 'PF-004', 'FATTA-5'),
(579, 673, 3772.75, 'PF-003', 'FATTA-28'),
(580, 328, 1842.79, 'PF-002', 'FATTA-81'),
(581, 367, 6689.18, 'PF-004', 'FATTA-51'),
(582, 617, 2933.27, 'PF-001', 'FATTA-31'),
(583, 282, 4233.63, 'PF-002', 'FATTA-57'),
(584, 513, 9512.97, 'PF-002', 'FATTA-90'),
(585, 799, 2443.26, 'PF-002', 'FATTA-100'),
(586, 815, 8345.93, 'PF-003', 'FATTA-86'),
(587, 367, 2980.17, 'PF-002', 'FATTA-50'),
(588, 771, 2795.5, 'PF-001', 'FATTA-38'),
(589, 446, 5882.84, 'PF-001', 'FATTA-89'),
(590, 352, 8989.59, 'PF-002', 'FATTA-80'),
(591, 101, 8684.34, 'PF-004', 'FATTA-5'),
(592, 369, 6896.99, 'PF-003', 'FATTA-79'),
(593, 492, 5102.85, 'PF-004', 'FATTA-6'),
(594, 703, 2817.45, 'PF-004', 'FATTA-79'),
(595, 279, 4337.34, 'PF-002', 'FATTA-16'),
(596, 689, 8177.67, 'PF-001', 'FATTA-47'),
(597, 646, 1489.61, 'PF-004', 'FATTA-42'),
(598, 322, 3082.87, 'PF-004', 'FATTA-9'),
(599, 683, 2683.57, 'PF-001', 'FATTA-68'),
(600, 833, 4177.02, 'PF-004', 'FATTA-65'),
(601, 822, 1421.83, 'PF-002', 'FATTA-85'),
(602, 539, 7053.29, 'PF-003', 'FATTA-91'),
(603, 183, 8950.16, 'PF-002', 'FATTA-25'),
(604, 515, 6804.14, 'PF-002', 'FATTA-66'),
(605, 441, 9528.5, 'PF-002', 'FATTA-85'),
(606, 803, 5665.93, 'PF-004', 'FATTA-98'),
(607, 488, 3601.96, 'PF-004', 'FATTA-74'),
(608, 485, 9641.79, 'PF-003', 'FATTA-65'),
(609, 809, 1896.7, 'PF-003', 'FATTA-12'),
(610, 922, 8457.72, 'PF-002', 'FATTA-54'),
(611, 901, 6345.98, 'PF-002', 'FATTA-55'),
(612, 533, 7813.35, 'PF-001', 'FATTA-100'),
(613, 755, 9460.87, 'PF-002', 'FATTA-68'),
(614, 532, 2961.18, 'PF-003', 'FATTA-3'),
(615, 205, 7782.14, 'PF-002', 'FATTA-48'),
(616, 298, 6077.07, 'PF-002', 'FATTA-8'),
(617, 626, 3142.01, 'PF-001', 'FATTA-16'),
(618, 534, 2746.3, 'PF-002', 'FATTA-58'),
(619, 927, 4868.05, 'PF-003', 'FATTA-17'),
(620, 366, 9518.07, 'PF-002', 'FATTA-33'),
(621, 173, 9737.96, 'PF-003', 'FATTA-41'),
(622, 686, 3387.41, 'PF-002', 'FATTA-6'),
(623, 103, 9848.83, 'PF-002', 'FATTA-45'),
(624, 967, 1768.38, 'PF-001', 'FATTA-2'),
(625, 394, 9878.19, 'PF-001', 'FATTA-80'),
(626, 201, 2697.15, 'PF-004', 'FATTA-21'),
(627, 297, 2857.36, 'PF-001', 'FATTA-30'),
(628, 728, 3681.29, 'PF-001', 'FATTA-81'),
(629, 386, 5361.52, 'PF-004', 'FATTA-92'),
(630, 152, 3199.01, 'PF-001', 'FATTA-69'),
(631, 241, 2453.1, 'PF-001', 'FATTA-14'),
(632, 315, 5514.88, 'PF-002', 'FATTA-98'),
(633, 890, 3140.29, 'PF-003', 'FATTA-47'),
(634, 423, 1114.2, 'PF-003', 'FATTA-23'),
(635, 252, 1178.37, 'PF-003', 'FATTA-54'),
(636, 342, 5739.41, 'PF-002', 'FATTA-36'),
(637, 687, 9143.97, 'PF-003', 'FATTA-39'),
(638, 590, 9130.09, 'PF-003', 'FATTA-81'),
(639, 159, 4387.43, 'PF-002', 'FATTA-58'),
(640, 251, 4125.44, 'PF-002', 'FATTA-13'),
(641, 189, 8138.06, 'PF-004', 'FATTA-34'),
(642, 597, 8405.7, 'PF-003', 'FATTA-58'),
(643, 927, 9626.93, 'PF-004', 'FATTA-29'),
(644, 474, 7517.87, 'PF-004', 'FATTA-16'),
(645, 968, 6733.35, 'PF-002', 'FATTA-91'),
(646, 481, 9576.74, 'PF-002', 'FATTA-76'),
(647, 232, 4994.76, 'PF-001', 'FATTA-86'),
(648, 890, 7450.69, 'PF-001', 'FATTA-11'),
(649, 754, 6823.61, 'PF-003', 'FATTA-93'),
(650, 471, 6473.42, 'PF-002', 'FATTA-13'),
(651, 803, 1697.47, 'PF-002', 'FATTA-46'),
(652, 439, 4057.78, 'PF-004', 'FATTA-42'),
(653, 290, 3414.84, 'PF-001', 'FATTA-12'),
(654, 828, 3874.39, 'PF-001', 'FATTA-5'),
(655, 720, 1879.42, 'PF-002', 'FATTA-79'),
(656, 925, 5453.17, 'PF-001', 'FATTA-3'),
(657, 524, 2826.66, 'PF-002', 'FATTA-86'),
(658, 494, 2892.38, 'PF-001', 'FATTA-60'),
(659, 470, 3578.82, 'PF-003', 'FATTA-28'),
(660, 537, 5367.32, 'PF-001', 'FATTA-7'),
(661, 761, 9948.34, 'PF-001', 'FATTA-72'),
(662, 329, 3869.46, 'PF-003', 'FATTA-76'),
(663, 878, 5598.82, 'PF-004', 'FATTA-71'),
(664, 225, 2468.59, 'PF-003', 'FATTA-6'),
(665, 163, 5244.69, 'PF-001', 'FATTA-29'),
(666, 221, 7507.25, 'PF-004', 'FATTA-71'),
(667, 894, 8317.08, 'PF-002', 'FATTA-11'),
(668, 790, 8337.66, 'PF-002', 'FATTA-52'),
(669, 127, 2049.21, 'PF-001', 'FATTA-25'),
(670, 949, 3239.03, 'PF-003', 'FATTA-49'),
(671, 222, 6665.7, 'PF-003', 'FATTA-94'),
(672, 508, 8627.75, 'PF-004', 'FATTA-34'),
(673, 290, 1585.78, 'PF-002', 'FATTA-86'),
(674, 614, 3298.38, 'PF-002', 'FATTA-75'),
(675, 486, 5285.24, 'PF-001', 'FATTA-6'),
(676, 677, 7599.16, 'PF-001', 'FATTA-58'),
(677, 415, 9692.05, 'PF-002', 'FATTA-26'),
(678, 270, 4161.96, 'PF-001', 'FATTA-20'),
(679, 826, 8783.63, 'PF-002', 'FATTA-85'),
(680, 431, 9498.29, 'PF-003', 'FATTA-29'),
(681, 528, 4478.76, 'PF-003', 'FATTA-10'),
(682, 760, 9612.93, 'PF-002', 'FATTA-58'),
(683, 323, 6833.43, 'PF-001', 'FATTA-46'),
(684, 274, 6830.48, 'PF-003', 'FATTA-19'),
(685, 634, 4651.3, 'PF-001', 'FATTA-29'),
(686, 154, 5572.35, 'PF-003', 'FATTA-93'),
(687, 262, 1862.01, 'PF-002', 'FATTA-47'),
(688, 864, 2977.26, 'PF-001', 'FATTA-66'),
(689, 809, 9990.6, 'PF-001', 'FATTA-47'),
(690, 499, 7977.44, 'PF-004', 'FATTA-14'),
(691, 560, 2988.31, 'PF-004', 'FATTA-83'),
(692, 972, 9013.86, 'PF-001', 'FATTA-49'),
(693, 861, 1895.52, 'PF-002', 'FATTA-45'),
(694, 690, 9233.34, 'PF-004', 'FATTA-40'),
(695, 700, 5649.85, 'PF-001', 'FATTA-83'),
(696, 726, 6374.55, 'PF-004', 'FATTA-14'),
(697, 290, 3578.42, 'PF-003', 'FATTA-10'),
(698, 751, 8000.2, 'PF-004', 'FATTA-94'),
(699, 745, 7580.06, 'PF-002', 'FATTA-37'),
(700, 196, 4825.58, 'PF-002', 'FATTA-39'),
(701, 646, 3652.72, 'PF-001', 'FATTA-13'),
(702, 662, 5063.83, 'PF-004', 'FATTA-56'),
(703, 490, 5996.03, 'PF-004', 'FATTA-60'),
(704, 623, 2538.19, 'PF-001', 'FATTA-12'),
(705, 275, 8042.55, 'PF-003', 'FATTA-59'),
(706, 449, 7188.68, 'PF-002', 'FATTA-2'),
(707, 951, 5712.61, 'PF-003', 'FATTA-68'),
(708, 406, 5226.78, 'PF-002', 'FATTA-70'),
(709, 563, 1530.38, 'PF-004', 'FATTA-89'),
(710, 592, 9981.45, 'PF-004', 'FATTA-62'),
(711, 944, 3483.81, 'PF-001', 'FATTA-84'),
(712, 968, 8256.28, 'PF-004', 'FATTA-94'),
(713, 672, 6370.94, 'PF-002', 'FATTA-1'),
(714, 810, 9511.75, 'PF-001', 'FATTA-88'),
(715, 141, 2781.84, 'PF-002', 'FATTA-2'),
(716, 439, 9275.72, 'PF-001', 'FATTA-32'),
(717, 132, 2454.26, 'PF-002', 'FATTA-88'),
(718, 536, 4695.26, 'PF-004', 'FATTA-27'),
(719, 150, 6521.2, 'PF-003', 'FATTA-55'),
(720, 589, 9083.13, 'PF-002', 'FATTA-62'),
(721, 358, 2254.26, 'PF-001', 'FATTA-33'),
(722, 415, 6408.4, 'PF-004', 'FATTA-33'),
(723, 274, 2666.42, 'PF-004', 'FATTA-77'),
(724, 383, 8905.09, 'PF-004', 'FATTA-21'),
(725, 246, 7731.78, 'PF-003', 'FATTA-50'),
(726, 861, 7461.5, 'PF-002', 'FATTA-60'),
(727, 996, 6407.64, 'PF-001', 'FATTA-84'),
(728, 378, 4611.29, 'PF-003', 'FATTA-85'),
(729, 704, 9306.6, 'PF-002', 'FATTA-43'),
(730, 161, 4973.21, 'PF-001', 'FATTA-52'),
(731, 769, 9399.88, 'PF-004', 'FATTA-99'),
(732, 613, 3681.5, 'PF-004', 'FATTA-11'),
(733, 564, 6150.22, 'PF-004', 'FATTA-44'),
(734, 313, 7689.8, 'PF-004', 'FATTA-61'),
(735, 608, 1370.92, 'PF-003', 'FATTA-50'),
(736, 941, 9708.2, 'PF-003', 'FATTA-17'),
(737, 182, 4070.93, 'PF-001', 'FATTA-45'),
(738, 311, 4232.57, 'PF-004', 'FATTA-95'),
(739, 250, 8942.12, 'PF-002', 'FATTA-69'),
(740, 639, 5015.2, 'PF-002', 'FATTA-83'),
(741, 178, 9918.42, 'PF-001', 'FATTA-71'),
(742, 192, 5107.45, 'PF-004', 'FATTA-80'),
(743, 110, 5571.51, 'PF-004', 'FATTA-92'),
(744, 488, 7161.11, 'PF-001', 'FATTA-50'),
(745, 508, 2739.99, 'PF-003', 'FATTA-76'),
(746, 773, 2454.22, 'PF-003', 'FATTA-24'),
(747, 238, 2952.36, 'PF-003', 'FATTA-10'),
(748, 618, 9138.69, 'PF-003', 'FATTA-15'),
(749, 742, 3324.17, 'PF-002', 'FATTA-23'),
(750, 356, 5466.36, 'PF-001', 'FATTA-91'),
(751, 240, 3962.11, 'PF-003', 'FATTA-55'),
(752, 695, 8821.38, 'PF-003', 'FATTA-90'),
(753, 345, 1103.49, 'PF-002', 'FATTA-21'),
(754, 515, 7074.01, 'PF-001', 'FATTA-24'),
(755, 271, 7293.96, 'PF-001', 'FATTA-25'),
(756, 520, 6894.3, 'PF-001', 'FATTA-90'),
(757, 469, 5661.32, 'PF-004', 'FATTA-95'),
(758, 414, 8757.8, 'PF-002', 'FATTA-87'),
(759, 797, 2707.94, 'PF-003', 'FATTA-89'),
(760, 800, 2365.46, 'PF-003', 'FATTA-6'),
(761, 877, 7507.98, 'PF-004', 'FATTA-53'),
(762, 116, 9516.29, 'PF-001', 'FATTA-35'),
(763, 822, 7014.47, 'PF-001', 'FATTA-69'),
(764, 425, 4502.07, 'PF-004', 'FATTA-51'),
(765, 186, 2982.6, 'PF-001', 'FATTA-13'),
(766, 737, 3425.76, 'PF-002', 'FATTA-2'),
(767, 755, 7691.41, 'PF-002', 'FATTA-56'),
(768, 943, 3020.99, 'PF-003', 'FATTA-68'),
(769, 649, 8258.87, 'PF-002', 'FATTA-90'),
(770, 202, 6536.15, 'PF-003', 'FATTA-83'),
(771, 135, 1503.13, 'PF-001', 'FATTA-63'),
(772, 489, 2605.65, 'PF-002', 'FATTA-24'),
(773, 209, 1491.11, 'PF-003', 'FATTA-79'),
(774, 966, 9711.99, 'PF-004', 'FATTA-58'),
(775, 326, 5740.01, 'PF-002', 'FATTA-29'),
(776, 518, 9877.91, 'PF-003', 'FATTA-26'),
(777, 402, 9513.26, 'PF-003', 'FATTA-96'),
(778, 104, 4475.17, 'PF-001', 'FATTA-30'),
(779, 588, 4797.81, 'PF-003', 'FATTA-50'),
(780, 857, 6698.64, 'PF-003', 'FATTA-35'),
(781, 847, 2202.46, 'PF-002', 'FATTA-20'),
(782, 780, 9230.23, 'PF-002', 'FATTA-48'),
(783, 579, 9703.67, 'PF-004', 'FATTA-49'),
(784, 570, 2613.01, 'PF-003', 'FATTA-17'),
(785, 405, 9553.77, 'PF-001', 'FATTA-51'),
(786, 358, 1259.83, 'PF-004', 'FATTA-98'),
(787, 900, 3607.21, 'PF-002', 'FATTA-51'),
(788, 427, 5311.38, 'PF-003', 'FATTA-96'),
(789, 166, 1335.12, 'PF-004', 'FATTA-57'),
(790, 492, 8406.11, 'PF-004', 'FATTA-9'),
(791, 938, 6580.97, 'PF-004', 'FATTA-34'),
(792, 696, 4665.07, 'PF-004', 'FATTA-49'),
(793, 644, 4100.21, 'PF-002', 'FATTA-1'),
(794, 721, 8005.79, 'PF-002', 'FATTA-8'),
(795, 130, 2890.96, 'PF-001', 'FATTA-61'),
(796, 519, 8906.04, 'PF-003', 'FATTA-86'),
(797, 499, 7362.96, 'PF-003', 'FATTA-28'),
(798, 557, 9948.69, 'PF-004', 'FATTA-61'),
(799, 165, 5084.92, 'PF-004', 'FATTA-98'),
(800, 764, 5020.26, 'PF-002', 'FATTA-93');