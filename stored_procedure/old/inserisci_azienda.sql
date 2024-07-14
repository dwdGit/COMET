CREATE OR REPLACE PROCEDURE "C##DB_COMET".InserisciAzienda(
	p_PartitaIva 		Azienda.PARTITAIVA%TYPE,
	p_RagioneSociale 	Azienda.RAGIONESOCIALE%TYPE,
	p_Email 			Azienda.EMAIL%TYPE,
	p_Telefono 			Azienda.TELEFONO%TYPE,
	p_Indirizzo 		Azienda.INDIRIZZO%TYPE,
	p_Citta 			Azienda.CITTA%TYPE,
	p_Cap 				Azienda.CAP%TYPE,
	p_Nazione 			Azienda.NAZIONE%TYPE,
	p_Provincia 		Azienda.PROVINCIA%TYPE
)
IS
BEGIN
	INSERT INTO Azienda (
		PARTITAIVA,
		RAGIONESOCIALE,
		EMAIL,
		TELEFONO,
		INDIRIZZO,
		CITTA,
		CAP,
		NAZIONE,
		PROVINCIA
	) values (
		p_PartitaIva,
		p_RagioneSociale,
		p_Email,
		p_Telefono,
		p_Indirizzo,
		p_Citta,
		p_Cap,
		p_Nazione,
		p_Provincia
	);
END;