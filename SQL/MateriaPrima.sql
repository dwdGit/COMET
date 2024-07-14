create table "C##DB_COMET".MateriaPrima (
	CodiceMateriaPrima VARCHAR2(10) PRIMARY KEY,
	NomeProdotto VARCHAR2(50) NOT NULL UNIQUE,
	UnitaMisura VARCHAR2(2) NOT NULL,
	Vegano VARCHAR2(1) NOT NULL,
	
	CONSTRAINT CHECK_VEGANO_MP CHECK(Vegano IN ('Y','N')),
	CONSTRAINT CHECK_UNITA_MISURA_MP CHECK(UnitaMisura IN ('Kg','L'))
);

INSERT INTO MateriaPrima (CodiceMateriaPrima, NomeProdotto, UnitaMisura, Vegano) VALUES
('MP-001', 'Water', 'L', 'Y'),
('MP-002', 'Sodium Lauroyl Methyl Isethionate', 'Kg', 'Y'),
('MP-003', 'Cocamidopropyl Betaine', 'L', 'N'),
('MP-004', 'Decyl Glucoside', 'Kg', 'Y'),
('MP-005', 'Fragrance', 'Kg', 'N'),
('MP-006', 'Sodium Cocoyl Alaninate', 'Kg', 'Y'),
('MP-007', 'Polysorbate 20', 'L', 'Y'),
('MP-008', 'Sodium Methyl Isethionate', 'Kg', 'Y'),
('MP-009', 'Betaine', 'Kg', 'N'),
('MP-010', 'Lauric Acid', 'Kg', 'Y'),
('MP-011', 'C10-30 Alkyl Acrylate Crosspolymer', 'Kg', 'Y'),
('MP-012', 'Benzyl Alcohol', 'L', 'Y'),
('MP-013', 'Brassicamidopropyl Dimethylamine', 'L', 'Y'),
('MP-014', 'Coco-Glucoside', 'Kg', 'Y'),
('MP-015', 'Sodium Chloride', 'Kg', 'Y'),
('MP-016', 'Glyceryl Oleate', 'Kg', 'N'),
('MP-017', 'Sodium Benzoate', 'Kg', 'Y'),
('MP-018', 'Glycol Distearate', 'Kg', 'Y'),
('MP-019', 'Trisodium Ethylenediamine Disuccinate', 'Kg', 'Y'),
('MP-020', 'Polyquaternium-7', 'L', 'N'),
('MP-021', 'Phenethyl Benzoate', 'Kg', 'Y'),
('MP-022', 'Sodium Laurate', 'Kg', 'Y'),
('MP-023', 'Polyquaternium-10', 'Kg', 'N'),
('MP-024', 'Coconut Acid', 'Kg', 'Y'),
('MP-025', 'Tetrasodium Glutamate Diacetate', 'Kg', 'Y'),
('MP-026', 'Guar Hydroxypropyltrimonium Chloride', 'Kg', 'Y'),
('MP-027', 'Citric Acid', 'Kg', 'Y'),
('MP-028', 'Genipa Americana Fruit Extract', 'Kg', 'Y'),
('MP-029', 'Alpha-Isomethyl Ionone', 'Kg', 'N'),
('MP-030', 'Linalool', 'Kg', 'N'),
('MP-031', 'Corn Starch Modified', 'Kg', 'Y'),
('MP-032', 'Glyceryl Stearate', 'Kg', 'N'),
('MP-033', 'Tocopherol', 'Kg', 'Y'),
('MP-034', 'Sodium Hydroxide', 'Kg', 'Y'),
('MP-035', 'Coumarin', 'Kg', 'N'),
('MP-036', 'Hydrolyzed Adansonia Digitata Seed Extract', 'Kg', 'Y'),
('MP-037', 'Glycine Soja Oil', 'L', 'N'),
('MP-039', 'SODIUM LAURETH SULFATE', 'Kg', 'N'),
('MP-041', 'DISTEARETH-75 IPDI', 'Kg', 'N'),
('MP-042', 'PPG-3 BENZYL ETHER MYRISTATE', 'L', 'N'),
('MP-043', 'GLYCERETH-7 CAPRYLATE/CAPRATE', 'L', 'N'),
('MP-044', 'COCAMIDOPROPYL BETAINE', 'L', 'N'),
('MP-045', 'COCAMIDE MEA', 'L', 'N'),
('MP-046', 'DECYL GLUCOSIDE', 'L', 'Y'),
('MP-047', 'GLYCINE', 'Kg', 'Y'),
('MP-048', 'ALANINE', 'Kg', 'Y'),
('MP-049', 'SERINE', 'Kg', 'Y'),
('MP-050', 'VALINE', 'Kg', 'Y'),
('MP-051', 'SODIUM PCA', 'Kg', 'Y'),
('MP-052', 'SODIUM LACTATE', 'L', 'Y'),
('MP-053', 'CARAMEL', 'L', 'Y'),
('MP-054', 'PHYTANTRIOL', 'Kg', 'N'),
('MP-055', 'ARGININE', 'Kg', 'Y'),
('MP-056', 'PANTHENOL', 'Kg', 'N'),
('MP-057', 'ASPARTIC ACID', 'Kg', 'Y'),
('MP-058', 'PCA', 'Kg', 'Y'),
('MP-059', 'PROLINE', 'Kg', 'Y'),
('MP-060', 'THREONINE', 'Kg', 'Y'),
('MP-061', 'ISOLEUCINE', 'Kg', 'Y'),
('MP-062', 'HISTIDINE', 'Kg', 'Y'),
('MP-063', 'PHENYLALANINE', 'Kg', 'Y'),
('MP-064', 'BUTYROSPERMUM PARKII (SHEA) BUTTER', 'Kg', 'Y'),
('MP-065', 'ARCTIUM LAPPA ROOT EXTRACT', 'L', 'Y'),
('MP-066', 'ROSMARINUS OFFICINALIS (ROSEMARY) LEAF EXTRACT', 'L', 'Y'),
('MP-067', 'URTICA DIOICA (NETTLE) LEAF EXTRACT', 'L', 'Y'),
('MP-068', 'SALVIA OFFICINALIS (SAGE) LEAF EXTRACT', 'L', 'Y'),
('MP-069', 'CHAMOMILLA RECUTITA (MATRICARIA) FLOWER EXTRACT', 'L', 'Y'),
('MP-070', 'PEG-150 DISTEARATE', 'Kg', 'N'),
('MP-071', 'CAPRYLYL GLYCOL', 'L', 'Y'),
('MP-072', 'GUAR HYDROXYPROPYLTRIMONIUM CHLORIDE', 'Kg', 'Y'),
('MP-073', 'GLYCERIN', 'L', 'Y'),
('MP-074', 'CHLORPHENESIN', 'Kg', 'N'),
('MP-075', 'SODIUM BENZOATE', 'Kg', 'Y'),
('MP-076', 'CAPRYLHYDROXAMIC ACID', 'Kg', 'N'),
('MP-077', 'POLYSORBATE 20', 'L', 'Y'),
('MP-078', 'STYRAX BENZOIN GUM', 'Kg', 'N'),
('MP-079', 'VITIS VINIFERA (GRAPE) SEED OIL', 'L', 'Y'),
('MP-080', 'PHENOXYETHANOL', 'L', 'N'),
('MP-083', 'BENZYL BENZOATE', 'L', 'N'),
('MP-084', 'BENZYL SALICYLATE', 'L', 'N'),
('MP-085', 'CITRONELLOL', 'Kg', 'Y'),
('MP-086', 'COUMARIN', 'Kg', 'Y'),
('MP-087', 'HEXYL CINNAMAL', 'Kg', 'Y'),
('MP-088', 'HYDROXYCITRONELLAL', 'Kg', 'N'),
('MP-090', 'YELLOW 5 (CI 19140)', 'Kg', 'N'),
('MP-092', 'Cetearyl Alcohol', 'Kg', 'Y'),
('MP-093', 'Glycerin', 'Kg', 'Y'),
('MP-094', 'Behentrimonium Chloride', 'Kg', 'Y'),
('MP-095', 'Cetearyl Ethylhexanoate', 'Kg', 'Y'),
('MP-096', 'Pentylene Glycol', 'Kg', 'Y'),
('MP-097', 'Cetyl Esters', 'Kg', 'Y'),
('MP-098', 'Biotin', 'Kg', 'Y'),
('MP-099', 'Butyrospermum Parkii (Shea) Butter', 'Kg', 'Y'),
('MP-100', 'Calcium DNA', 'Kg', 'Y'),
('MP-101', 'Hydrolyzed Keratin', 'Kg', 'Y'),
('MP-102', 'Keratin', 'Kg', 'Y'),
('MP-103', 'Lecithin', 'Kg', 'Y'),
('MP-104', 'Magnesium DNA', 'Kg', 'Y'),
('MP-105', 'Palmitoyl Myristyl Serinate', 'Kg', 'Y'),
('MP-106', 'Panthenol', 'Kg', 'Y'),
('MP-107', 'Pantolactone', 'Kg', 'Y'),
('MP-108', 'RNA', 'Kg', 'Y'),
('MP-109', 'Rosa Moschata Seed Oil', 'L', 'Y'),
('MP-110', 'Silanetriol Lysinate', 'Kg', 'Y'),
('MP-111', 'Sodium DNA', 'Kg', 'Y'),
('MP-112', 'Urea', 'Kg', 'Y'),
('MP-113', 'Ceteareth-20', 'Kg', 'Y'),
('MP-115', 'Disodium EDTA', 'Kg', 'Y'),
('MP-116', 'Isopropyl Alcohol', 'L', 'Y'),
('MP-117', 'PEG-8', 'Kg', 'Y'),
('MP-118', 'SMDI Copolymer', 'Kg', 'Y'),
('MP-120', 'Propylene Glycol', 'L', 'Y'),
('MP-121', 'Sodium Acetate', 'Kg', 'Y'),
('MP-123', 'Sodium Polyacrylate', 'Kg', 'Y'),
('MP-124', 'Caramel', 'Kg', 'Y'),
('MP-125', 'Yellow 5 (CI 19140)', 'Kg', 'Y'),
('MP-126', 'Chlorphenesin', 'Kg', 'Y'),
('MP-130', 'Benzyl Salicylate', 'Kg', 'Y'),
('MP-132', 'Hexyl Cinnamal', 'Kg', 'Y'),
('MP-133', 'Limonene', 'Kg', 'Y'),
('MP-137', 'Propanediol', 'Kg', 'Y'),
('MP-138', 'Behentrimonium Methosulfate', 'Kg', 'Y'),
('MP-139', 'Cocos Nucifera (Coconut) Oil', 'Kg', 'Y'),
('MP-140', 'Emblica Officinalis (Amla) Fruit Extract', 'Kg', 'Y'),
('MP-141', 'Curcuma Longa (Turmeric) Root Extract', 'Kg', 'Y'),
('MP-142', 'Panax Ginseng (Ginseng) Root Extract', 'Kg', 'Y'),
('MP-143', 'Centella Asiatica (Hydrocotyl) Extract', 'Kg', 'Y'),
('MP-144', 'Aleurites Moluccana (Kukui) Seed Oil', 'Kg', 'Y'),
('MP-145', 'Caffeine', 'Kg', 'Y'),
('MP-146', 'Tocopherol (Vitamin E)', 'Kg', 'Y'),
('MP-147', 'Hydrolyzed Soy Protein', 'Kg', 'Y'),
('MP-148', 'Malt Extract', 'Kg', 'Y'),
('MP-149', 'Adenosine Phosphate', 'Kg', 'Y'),
('MP-150', 'Creatine', 'Kg', 'Y'),
('MP-151', 'Yeast Extract', 'Kg', 'Y'),
('MP-152', 'Acetyl Carnitine Hcl', 'Kg', 'Y'),
('MP-153', 'Dihydroxypropyl Arginine Hcl', 'Kg', 'Y'),
('MP-154', 'Distearyldimonium Chloride', 'Kg', 'Y'),
('MP-155', 'Caprylyl Glycol', 'Kg', 'Y'),
('MP-156', 'Dimethicone', 'Kg', 'Y'),
('MP-157', 'Methyl Trimethicone', 'Kg', 'Y'),
('MP-158', 'Dimethicone Peg-8 Polyacrylate', 'Kg', 'Y'),
('MP-159', 'Polyglyceryl-10 Laurate', 'Kg', 'Y'),
('MP-160', 'Dimethicone Copolymer', 'Kg', 'Y'),
('MP-163', 'Eugenol', 'Kg', 'Y'),
('MP-164', 'Geraniol', 'Kg', 'Y'),
('MP-166', 'Citral', 'Kg', 'Y'),
('MP-167', 'Benzyl Benzoate', 'Kg', 'Y'),
('MP-169', 'Potassium Sorbate', 'Kg', 'Y');
