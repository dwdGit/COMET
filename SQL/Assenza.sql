create table "C##DB_COMET".Assenza (
	CodiceAssenza VARCHAR2(10) PRIMARY KEY,
	DataInizioAssenza DATE,
	DataFineAssenza DATE,
	Causale VARCHAR2(32),
	Ferie boolean,
	Permessi boolean,
	ExFestivita boolean,
	CodiceFiscaleDipendente char(16) NOT NULL,
	
	FOREIGN KEY (CodiceFiscaleDipendente) REFERENCES Dipendente(CodiceFiscale) ON DELETE SET NULL
);

insert into Assenza (CodiceAssenza, DataInizioAssenza, DataFineAssenza, Causale, Ferie, Permessi, ExFestivita, CodiceFiscaleDipendente) values
('ASS-1', TO_DATE('2024-01-10T11:05:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-22T11:05:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'mal di testa', true, false, false, 'RSSGRL80C27F839Y'),
('ASS-2', TO_DATE('2024-03-12T07:53:52Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-17T07:53:52Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo cardiaco', false, false, false, 'GTTGLI79D49F839Q'),
('ASS-3', TO_DATE('2024-03-20T03:35:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-24T03:35:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicologico-sociale', false, false, true, 'PLLNTN71A23G311W'),
('ASS-4', TO_DATE('2024-05-29T02:53:38Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-31T02:53:38Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo ostetrico', false, false, true, 'GTTRRT64A20F205I'),
('ASS-5', TO_DATE('2024-04-08T09:28:07Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-10T09:28:07Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'ferita', true, false, true, 'RZZGRL06B19F839C'),
('ASS-6', TO_DATE('2024-02-09T22:45:25Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-23T22:45:25Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'allergia', true, true, true, 'MRNSMN65S15F839Q'),
('ASS-7', TO_DATE('2024-04-04T04:51:43Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-05T04:51:43Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo otorinolaringoiatrico', false, true, true, 'CSTNDR68S21F839D'),
('ASS-8', TO_DATE('2024-01-09T10:23:20Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-23T10:23:20Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicologico-lavorativo', false, false, true, 'GTTGLI79D49F839Q'),
('ASS-9', TO_DATE('2024-03-19T14:45:16Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-25T14:45:16Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicologico-sociale', true, false, false, 'PLLCRN90T71G311T'),
('ASS-10', TO_DATE('2024-04-15T03:01:17Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-21T03:01:17Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo dermatologico', true, false, false, 'CSTNDR68S21F839D'),
('ASS-11', TO_DATE('2024-02-03T17:56:06Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-04T17:56:06Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'ferita', true, true, false, 'CRSFNC01B42F839Q'),
('ASS-12', TO_DATE('2024-04-18T06:18:05Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-22T06:18:05Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'incidente stradale', true, true, true, 'MRNSMN65S15F839Q'),
('ASS-13', TO_DATE('2024-02-05T19:07:54Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-15T19:07:54Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo cardiaco', true, false, false, 'FRRSFO62T45F839X'),
('ASS-14', TO_DATE('2024-03-29T10:48:56Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-31T10:48:56Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'allergia', false, false, true, 'GTTMTT75E10F839S'),
('ASS-15', TO_DATE('2024-03-01T03:40:42Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-06T03:40:42Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo neurologico', true, false, true, 'MRTFNC61M67F839Z'),
('ASS-16', TO_DATE('2024-06-30T01:38:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-07-01T01:38:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psiconeuroimmunologico', true, false, false, 'LNESFO71R59F839P'),
('ASS-17', TO_DATE('2024-05-02T05:22:02Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-03T05:22:02Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'frattura', false, true, true, 'RZZGRT78R45F839F'),
('ASS-18', TO_DATE('2024-03-20T09:50:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-25T09:50:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo reumatologico', true, false, true, 'GRCGRG93P64F839R'),
('ASS-19', TO_DATE('2024-06-09T01:28:06Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-11T01:28:06Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo neurologico', false, false, true, 'RSSSFO73T47L219U'),
('ASS-20', TO_DATE('2024-04-16T20:51:22Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-28T20:51:22Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo ginecologico', true, true, true, 'PLLDVD82A16H501O'),
('ASS-21', TO_DATE('2024-06-14T07:27:35Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-16T07:27:35Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo oftalmologico', true, true, true, 'MRNLCU01S22F839E'),
('ASS-22', TO_DATE('2024-06-05T14:28:29Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-09T14:28:29Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'frattura', false, false, true, 'PLLCRN90T71G311T'),
('ASS-23', TO_DATE('2024-01-03T14:38:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-06T14:38:49Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo del sonno', true, false, true, 'PLLCRN90T71G311T'),
('ASS-24', TO_DATE('2024-04-02T13:30:19Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-05T13:30:19Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicofisico', true, true, false, 'MRNLCU01S22F839E'),
('ASS-25', TO_DATE('2024-04-20T16:24:03Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-24T16:24:03Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo ginecologico', true, false, false, 'MRTGNN81H29F839O'),
('ASS-26', TO_DATE('2024-05-30T10:32:51Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-04T10:32:51Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo epatico', false, false, true, 'GRCNCL64D09F839F'),
('ASS-27', TO_DATE('2024-03-01T18:30:58Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-02T18:30:58Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicofisico', false, true, true, 'GTTMTN76L55H501W'),
('ASS-28', TO_DATE('2024-02-12T15:23:14Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-14T15:23:14Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'frattura', true, false, true, 'FRRSLV88R60F839P'),
('ASS-29', TO_DATE('2024-04-25T05:25:44Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-27T05:25:44Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'mal di stomaco', true, false, false, 'PLLCRN90T71G311T'),
('ASS-30', TO_DATE('2024-05-21T08:27:31Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-23T08:27:31Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo oftalmologico', false, true, true, 'RSSSFO73T47L219U'),
('ASS-31', TO_DATE('2024-04-25T03:01:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-28T03:01:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo oftalmologico', true, true, true, 'GTTMTT75E10F839S'),
('ASS-32', TO_DATE('2024-05-10T13:38:28Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-16T13:38:28Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo reumatologico', false, false, false, 'MRNLCU01S22F839E'),
('ASS-33', TO_DATE('2024-01-15T10:25:39Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-29T10:25:39Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'intervento chirurgico', false, true, true, 'LNENCL76E08F839Y'),
('ASS-34', TO_DATE('2024-05-01T06:38:16Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-08T06:38:16Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'influenza', false, false, true, 'MCCCRI98E08B946L'),
('ASS-35', TO_DATE('2024-06-13T19:41:03Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-06-24T19:41:03Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo odontoiatrico', true, false, false, 'BNCBRC61D48F839T'),
('ASS-36', TO_DATE('2024-03-23T05:09:18Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-29T05:09:18Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psichiatrico', false, true, true, 'GTTMTN76L55H501W'),
('ASS-37', TO_DATE('2024-03-17T04:52:41Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-31T04:52:41Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'problemi familiari', true, true, true, 'RSSGRL80C27F839Y'),
('ASS-38', TO_DATE('2024-05-08T00:34:50Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-09T00:34:50Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo dermatologico', false, false, true, 'PLLVTR98A27F839L'),
('ASS-39', TO_DATE('2024-02-03T14:21:30Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-02-04T14:21:30Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'frattura', false, false, true, 'PLLCRN90T71G311T'),
('ASS-40', TO_DATE('2024-04-30T21:19:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-06T21:19:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo tiroideo', true, false, true, 'RCCLCU93A24F839F'),
('ASS-41', TO_DATE('2024-01-10T05:39:36Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-11T05:39:36Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo urologico', false, true, true, 'PLLCRN90T71G311T'),
('ASS-42', TO_DATE('2024-05-13T06:11:53Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-14T06:11:53Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo psicofisico', false, false, true, 'CRSFNC01B42F839Q'),
('ASS-43', TO_DATE('2024-03-02T23:06:50Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-06T23:06:50Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'mal di stomaco', true, true, false, 'MRTGNN81H29F839O'),
('ASS-44', TO_DATE('2024-05-18T02:24:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-20T02:24:59Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'dolore muscolare', false, false, false, 'CRSFNC01B42F839Q'),
('ASS-45', TO_DATE('2024-03-29T01:36:24Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-01T01:36:24Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo del sonno', false, false, true, 'LNENDR85C24F839V'),
('ASS-46', TO_DATE('2024-02-25T18:54:27Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-05T18:54:27Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'frattura', false, true, false, 'LNENCL76E08F839Y'),
('ASS-47', TO_DATE('2024-04-26T09:18:17Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-04-28T09:18:17Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'intervento chirurgico', true, false, false, 'MCCCRI98E08B946L'),
('ASS-48', TO_DATE('2024-01-22T21:37:53Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-01-30T21:37:53Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'influenza', true, false, false, 'MRNLCU01S22F839E'),
('ASS-49', TO_DATE('2024-03-18T06:50:45Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-03-21T06:50:45Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo pancreatico', false, false, true, 'GTTRRT64A20F205I'),
('ASS-50', TO_DATE('2024-04-26T21:27:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), TO_DATE('2024-05-03T21:27:47Z', 'YYYY-MM-DD"T"HH24:MI:SS"Z"'), 'disturbo epatico', false, false, true, 'PLLNTN71A23G311W');