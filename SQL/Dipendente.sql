create table "C##DB_COMET".Dipendente (
	CodiceFiscale CHAR(16) PRIMARY KEY,
	Nome VARCHAR2(25) NOT NULL,
	Cognome VARCHAR2(25) NOT NULL,
	DataNascita DATE NOT NULL,
	DataAssunzione DATE NOT NULL,
	Email VARCHAR2(50) NOT NULL,
	Telefono VARCHAR2(10) NOT NULL,
	Sesso ChAR(1) NOT NULL,
	Mansione VARCHAR2(10) NOT NULL,
	CFSupervisore CHAR(16),
	
	CONSTRAINT FK_SUPERVISIONA FOREIGN KEY (CFSupervisore) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL,
	CONSTRAINT CHECK_SESSO CHECK(Sesso IN ('M','F'))
);

insert into Dipendente (CodiceFiscale, Nome, Cognome, DataNascita, DataAssunzione, Email, Telefono, Sesso, Mansione, CFSupervisore) values
('CRSFNC01B42F839Q', 'Francesca', 'Caruso', TO_DATE('02/02/2001', 'DD/MM/YYYY'), TO_DATE('12/12/2018', 'DD/MM/YYYY'), 'francesca.caruso@comet.com', '3388356562', 'F', 'Produzione', null),
('GRCNCL64D09F839F', 'Nicola', 'Greco', TO_DATE('09/04/1964', 'DD/MM/YYYY'), TO_DATE('17/06/2018', 'DD/MM/YYYY'), 'nicola.greco@comet.com', '3386500808', 'M', 'Produzione', 'CRSFNC01B42F839Q'),
('GTTRRT64A20F205I', 'Roberto', 'Gatti', TO_DATE('20/01/1964', 'DD/MM/YYYY'), TO_DATE('29/12/2002', 'DD/MM/YYYY'), 'roberto.gatti@comet.com', '3383133207', 'M', 'Produzione', 'CRSFNC01B42F839Q'),
('RZZLSN95C24F839A', 'Alessandro', 'Rizzo', TO_DATE('24/03/1995', 'DD/MM/YYYY'), TO_DATE('05/08/2019', 'DD/MM/YYYY'), 'alessandro.rizzo@comet.com', '3386953828', 'M', 'Produzione', 'CRSFNC01B42F839Q'),
('GRCGRG93P64F839R', 'Giorgia', 'Greco', TO_DATE('24/09/1993', 'DD/MM/YYYY'), TO_DATE('05/02/2003', 'DD/MM/YYYY'), 'giorgia.greco@comet.com', '3385064339', 'F', 'Produzione', 'CRSFNC01B42F839Q'),
('RZZGRL06B19F839C', 'Gabriele', 'Rizzo', TO_DATE('19/02/2006', 'DD/MM/YYYY'), TO_DATE('07/04/2004', 'DD/MM/YYYY'), 'gabriele.rizzo@comet.com', '3454569084', 'M', 'Produzione', null),
('RSSSFO73T47L219U', 'Sofia', 'Rossi', TO_DATE('07/12/1973', 'DD/MM/YYYY'), TO_DATE('21/03/2006', 'DD/MM/YYYY'), 'sofia.rossi@comet.com', '3450189785', 'F', 'Produzione', 'RZZGRL06B19F839C'),
('MRTGNN81H29F839O', 'Giovanni', 'Martini', TO_DATE('29/06/1981', 'DD/MM/YYYY'), TO_DATE('17/03/2015', 'DD/MM/YYYY'), 'giovanni.martini@comet.com', '3457797161', 'M', 'Produzione', 'RZZGRL06B19F839C'),
('RCCLCU93A24F839F', 'Luca', 'Ricci', TO_DATE('24/01/1993', 'DD/MM/YYYY'), TO_DATE('14/05/2005', 'DD/MM/YYYY'), 'luca.ricci@comet.com', '3384684230', 'M', 'Produzione', 'RZZGRL06B19F839C'),
('CSTNDR68S21F839D', 'Andrea', 'Costa', TO_DATE('22/11/1968', 'DD/MM/YYYY'), TO_DATE('06/10/2001', 'DD/MM/YYYY'), 'andrea.costa@comet.com', '3385857853', 'M', 'Produzione', 'RZZGRL06B19F839C'),
('MRNLCU01S22F839E', 'Luca', 'Marini', TO_DATE('22/11/2001', 'DD/MM/YYYY'), TO_DATE('04/04/2012', 'DD/MM/YYYY'), 'luca.marini@comet.com', '3314374134', 'M', 'Produzione', null),
('GTTMTN76L55H501W', 'Martina', 'Gatti', TO_DATE('15/07/1976', 'DD/MM/YYYY'), TO_DATE('11/10/2017', 'DD/MM/YYYY'), 'martina.gatti@comet.com', '3451470883', 'F', 'Produzione', 'MRNLCU01S22F839E'),
('RZZGRT78R45F839F', 'Greta', 'Rizzo', TO_DATE('05/10/1978', 'DD/MM/YYYY'), TO_DATE('23/01/2010', 'DD/MM/YYYY'), 'greta.rizzo@comet.com', '3455328195', 'F', 'Produzione', 'MRNLCU01S22F839E'),
('LNENDR85C24F839V', 'Andrea', 'Leone', TO_DATE('24/03/1985', 'DD/MM/YYYY'), TO_DATE('30/04/2016', 'DD/MM/YYYY'), 'andrea.leone@comet.com', '3317757872', 'M', 'Produzione', 'MRNLCU01S22F839E'),
('GTTMTT75E10F839S', 'Matteo', 'Gatti', TO_DATE('10/05/1975', 'DD/MM/YYYY'), TO_DATE('15/05/2006', 'DD/MM/YYYY'), 'matteo.gatti@comet.com', '3455110544', 'M', 'Produzione', 'MRNLCU01S22F839E'),
('PLLCRN90T71G311T', 'Caterina', 'Pellegrini', TO_DATE('31/12/1990', 'DD/MM/YYYY'), TO_DATE('24/04/2003', 'DD/MM/YYYY'), 'caterina.pellegrini@comet.com', '3384618542', 'F', 'Produzione', null),
('PLLNTN71A23G311W', 'Antonio', 'Pellegrini', TO_DATE('23/01/1971', 'DD/MM/YYYY'), TO_DATE('08/09/2013', 'DD/MM/YYYY'), 'antonio.pellegrini@comet.com', '3280707139', 'M', 'Produzione', 'PLLCRN90T71G311T'),
('LNESFO71R59F839P', 'Sofia', 'Leone', TO_DATE('19/10/1971', 'DD/MM/YYYY'), TO_DATE('08/02/2007', 'DD/MM/YYYY'), 'sofia.leone@comet.com', '3382828898', 'F', 'Produzione', 'PLLCRN90T71G311T'),
('FRRSLV88R60F839P', 'Silvia', 'Ferrari', TO_DATE('20/10/1988', 'DD/MM/YYYY'), TO_DATE('14/09/2007', 'DD/MM/YYYY'), 'silvia.ferrari@comet.com', '3458839800', 'F', 'Produzione', 'PLLCRN90T71G311T'),
('MRTFNC61M67F839Z', 'Francesca', 'Martini', TO_DATE('27/08/1961', 'DD/MM/YYYY'), TO_DATE('18/02/2009', 'DD/MM/YYYY'), 'francesca.martini@comet.com', '3282494049', 'F', 'Produzione', 'PLLCRN90T71G311T'),
('PLLDVD82A16H501O', 'Davide', 'Pellegrini', TO_DATE('16/01/1982', 'DD/MM/YYYY'), TO_DATE('15/08/2006', 'DD/MM/YYYY'), 'davide.pellegrini@comet.com', '3312375537', 'M', 'Acquisti', null),
('LNENCL76E08F839Y', 'Nicola', 'Leone', TO_DATE('08/05/1976', 'DD/MM/YYYY'), TO_DATE('26/07/2008', 'DD/MM/YYYY'), 'nicola.leone@comet.com', '3380056604', 'M', 'Acquisti', 'PLLDVD82A16H501O'),
('MRNSMN65S15F839Q', 'Simone', 'Marini', TO_DATE('15/11/1965', 'DD/MM/YYYY'), TO_DATE('23/10/2014', 'DD/MM/YYYY'), 'simone.marini@comet.com', '3456086356', 'M', 'Acquisti', 'PLLDVD82A16H501O'),
('FRRSFO62T45F839X', 'Sofia', 'Ferrari', TO_DATE('05/12/1962', 'DD/MM/YYYY'), TO_DATE('11/07/2007', 'DD/MM/YYYY'), 'sofia.ferrari@comet.com', '3284438694', 'F', 'Acquisti', 'PLLDVD82A16H501O'),
('RSSGRL80C27F839Y', 'Gabriele', 'Rossi', TO_DATE('27/03/1980', 'DD/MM/YYYY'), TO_DATE('07/10/2019', 'DD/MM/YYYY'), 'gabriele.rossi@comet.com', '3457494503', 'M', 'Acquisti', 'PLLDVD82A16H501O'),
('RSSBRC61H60F839H', 'Beatrice', 'Rossi', TO_DATE('20/06/1961', 'DD/MM/YYYY'), TO_DATE('31/08/2005', 'DD/MM/YYYY'), 'beatrice.rossi@comet.com', '3283253327', 'F', 'Vendite', null),
('BNCBRC61D48F839T', 'Beatrice', 'Bianchi', TO_DATE('08/04/1961', 'DD/MM/YYYY'), TO_DATE('07/04/2013', 'DD/MM/YYYY'), 'beatrice.bianchi@comet.com', '3281379622', 'F', 'Vendite', 'RSSBRC61H60F839H'),
('GTTGLI79D49F839Q', 'Giulia', 'Gatti', TO_DATE('09/04/1979', 'DD/MM/YYYY'), TO_DATE('17/10/2020', 'DD/MM/YYYY'), 'giulia.gatti@comet.com', '3312325700', 'F', 'Vendite', 'RSSBRC61H60F839H'),
('MCCCRI98E08B946L', 'Ciro', 'Mucciardi', TO_DATE('08/05/1998', 'DD/MM/YYYY'), TO_DATE('05/03/2021', 'DD/MM/YYYY'), 'ciro.mucciardi@comet.com', '3289029946', 'M', 'Vendite', 'RSSBRC61H60F839H'),
('PLLVTR98A27F839L', 'Vittorio', 'Pollice', TO_DATE('27/01/1998', 'DD/MM/YYYY'), TO_DATE('11/07/2014', 'DD/MM/YYYY'), 'vittorio.pollice@comet.com', '3316554697', 'F', 'Vendite', 'RSSBRC61H60F839H');
