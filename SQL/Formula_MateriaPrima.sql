CREATE TABLE "C##DB_COMET".Formula_MateriaPrima (
	CodiceFormula VARCHAR2(10),
	CodiceMateriaPrima VARCHAR2(10),
	QuantitaDaUtilizzare NUMBER(10,2) NOT NULL,
	FaseDiUtilizzo NUMBER(3) NOT NULL,

	CONSTRAINT PK_Formula_MateriaPrima PRIMARY KEY(CodiceFormula, CodiceMateriaPrima),
	FOREIGN KEY (CodiceFormula) REFERENCES Formula(CodiceFormula) ON DELETE SET NULL,
	FOREIGN KEY (CodiceMateriaPrima) REFERENCES MateriaPrima(CodiceMateriaPrima) ON DELETE SET NULL
);

INSERT INTO FORMULA_MATERIAPRIMA (CodiceFormula, CodiceMateriaPrima, QuantitaDaUtilizzare, FaseDiUtilizzo) VALUES
('F-3', 'MP-1', 600, 1),
('F-3', 'MP-2', 50, 1),
('F-3', 'MP-3', 100, 1),
('F-3', 'MP-4', 50, 1),
('F-3', 'MP-5', 5, 6),
('F-3', 'MP-6', 20, 1),
('F-3', 'MP-7', 10, 2),
('F-3', 'MP-8', 30, 1),
('F-3', 'MP-9', 20, 2),
('F-3', 'MP-10', 10, 2),
('F-3', 'MP-11', 10, 2),
('F-3', 'MP-12', 5, 3),
('F-3', 'MP-13', 5, 1),
('F-3', 'MP-14', 20, 1),
('F-3', 'MP-15', 20, 1),
('F-3', 'MP-16', 5, 4),
('F-3', 'MP-17', 5, 3),
('F-3', 'MP-18', 10, 4),
('F-3', 'MP-19', 5, 3),
('F-3', 'MP-20', 10, 3),
('F-3', 'MP-21', 5, 4),
('F-3', 'MP-22', 10, 1),
('F-3', 'MP-23', 5, 3),
('F-3', 'MP-24', 10, 4),
('F-3', 'MP-25', 5, 4),
('F-3', 'MP-26', 5, 3),
('F-3', 'MP-27', 5, 1),
('F-3', 'MP-28', 5, 4),
('F-3', 'MP-29', 2, 4),
('F-3', 'MP-30', 2, 4),
('F-3', 'MP-31', 10, 4),
('F-3', 'MP-32', 5, 4),
('F-3', 'MP-33', 2, 4),
('F-3', 'MP-34', 5, 5),
('F-3', 'MP-35', 2, 6),
('F-3', 'MP-36', 5, 1),
('F-3', 'MP-37', 5, 1),
('F-1', 'MP-1', 2500, 5),
('F-1', 'MP-5', 20, 4),
('F-1', 'MP-27', 2, 2),
('F-1', 'MP-29', 0.02, 4),
('F-1', 'MP-39', 628, 1),
('F-1', 'MP-41', 41, 1),
('F-1', 'MP-42', 42, 1),
('F-1', 'MP-43', 21, 2),
('F-1', 'MP-44', 210, 1),
('F-1', 'MP-45', 41, 1),
('F-1', 'MP-46', 210, 1),
('F-1', 'MP-47', 1.25, 3),
('F-1', 'MP-48', 1.25, 3),
('F-1', 'MP-49', 1.25, 3),
('F-1', 'MP-50', 1.25, 3),
('F-1', 'MP-51', 84, 1),
('F-1', 'MP-52', 53, 1),
('F-1', 'MP-54', 4, 2),
('F-1', 'MP-56', 4, 2),
('F-1', 'MP-57', 1.25, 3),
('F-1', 'MP-58', 1.25, 3),
('F-1', 'MP-59', 1.25, 3),
('F-1', 'MP-60', 1.25, 3),
('F-1', 'MP-61', 1.25, 3),
('F-1', 'MP-62', 1.25, 3),
('F-1', 'MP-63', 1.25, 3),
('F-1', 'MP-64', 5, 2),
('F-1', 'MP-65', 4, 2),
('F-1', 'MP-66', 5, 2),
('F-1', 'MP-67', 4, 2),
('F-1', 'MP-68', 5, 2),
('F-1', 'MP-69', 4, 2),
('F-1', 'MP-70', 42, 1),
('F-1', 'MP-71', 20, 2),
('F-1', 'MP-72', 2, 2),
('F-1', 'MP-73', 125, 1),
('F-1', 'MP-74', 13, 2),
('F-1', 'MP-75', 4, 3),
('F-1', 'MP-76', 3, 2),
('F-1', 'MP-77', 2, 2),
('F-1', 'MP-78', 3, 2),
('F-1', 'MP-79', 2, 2),
('F-1', 'MP-80', 12, 2),
('F-1', 'MP-83', 0.02, 4),
('F-1', 'MP-84', 0.02, 4),
('F-1', 'MP-85', 0.02, 4),
('F-1', 'MP-86', 0.02, 4),
('F-1', 'MP-87', 0.02, 4),
('F-1', 'MP-88', 0.02, 4),
('F-1', 'MP-30', 0.02, 4),
('F-1', 'MP-90', 0.1, 4),
('F-4', 'MP-1', 1540, 1),
('F-4', 'MP-5', 350, 2),
('F-4', 'MP-15', 70, 1),
('F-4', 'MP-23', 35, 1),
('F-4', 'MP-27', 17.5, 1),
('F-4', 'MP-29', 8.75, 2),
('F-4', 'MP-30', 8.75, 2),
('F-4', 'MP-80', 35, 2),
('F-4', 'MP-85', 8.75, 2),
('F-4', 'MP-92', 17.5, 1),
('F-4', 'MP-93', 87.5, 1),
('F-4', 'MP-94', 35, 1),
('F-4', 'MP-95', 17.5, 1),
('F-4', 'MP-96', 17.5, 2),
('F-4', 'MP-97', 17.5, 1),
('F-4', 'MP-98', 8.75, 1),
('F-4', 'MP-99', 87.5, 1),
('F-4', 'MP-100', 8.75, 1),
('F-4', 'MP-101', 17.5, 1),
('F-4', 'MP-102', 17.5, 1),
('F-4', 'MP-103', 8.75, 1),
('F-4', 'MP-104', 8.75, 1),
('F-4', 'MP-105', 8.75, 1),
('F-4', 'MP-106', 35, 1),
('F-4', 'MP-107', 8.75, 1),
('F-4', 'MP-108', 8.75, 1),
('F-4', 'MP-109', 8.75, 2),
('F-4', 'MP-110', 8.75, 1),
('F-4', 'MP-111', 8.75, 1),
('F-4', 'MP-112', 8.75, 1),
('F-4', 'MP-113', 17.5, 1),
('F-4', 'MP-115', 17.5, 1),
('F-4', 'MP-116', 150, 1),
('F-4', 'MP-117', 8.75, 1),
('F-4', 'MP-118', 8.75, 1),
('F-4', 'MP-120', 17.5, 2),
('F-4', 'MP-121', 17.5, 1),
('F-4', 'MP-123', 17.5, 1),
('F-4', 'MP-124', 17.5, 2),
('F-4', 'MP-125', 8.75, 2),
('F-4', 'MP-126', 8.75, 2),
('F-4', 'MP-130', 17.5, 2),
('F-4', 'MP-132', 8.75, 2),
('F-4', 'MP-133', 8.75, 2),
('F-2', 'MP-1', 1350, 1),
('F-2', 'MP-5', 9, 4),
('F-2', 'MP-27', 9, 4),
('F-2', 'MP-30', 1.8, 5),
('F-2', 'MP-80', 9, 3),
('F-2', 'MP-85', 1.8, 6),
('F-2', 'MP-92', 27, 2),
('F-2', 'MP-133', 1.8, 6),
('F-2', 'MP-137', 1, 6),
('F-2', 'MP-138', 9, 2),
('F-2', 'MP-139', 18, 2),
('F-2', 'MP-140', 9, 5),
('F-2', 'MP-141', 9, 5),
('F-2', 'MP-142', 9, 5),
('F-2', 'MP-143', 9, 5),
('F-2', 'MP-144', 9, 2),
('F-2', 'MP-145', 9, 3),
('F-2', 'MP-146', 9, 3),
('F-2', 'MP-147', 18, 3),
('F-2', 'MP-148', 9, 5),
('F-2', 'MP-149', 9, 5),
('F-2', 'MP-150', 9, 5),
('F-2', 'MP-151', 9, 5),
('F-2', 'MP-152', 9, 5),
('F-2', 'MP-153', 9, 5),
('F-2', 'MP-154', 9, 2),
('F-2', 'MP-155', 9, 3),
('F-2', 'MP-156', 18, 2),
('F-2', 'MP-157', 9, 3),
('F-2', 'MP-158', 9, 4),
('F-2', 'MP-159', 9, 4),
('F-2', 'MP-160', 9, 4),
('F-2', 'MP-163', 1.8, 6),
('F-2', 'MP-164', 1.8, 6),
('F-2', 'MP-166', 1.8, 6),
('F-2', 'MP-167', 1.8, 6),
('F-2', 'MP-169', 1.8, 3);
