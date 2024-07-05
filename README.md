# Azioni eseguibili

## Utenti DB

Gli utenti DB saranno:

* DB Comet
* Cliente
* Fornitore
* Acquisto
* Vendita
* Supervisore_Produzione
* Produzione

La possibilità di inserire dati in una tabella prevede anche la possibilità di lettura/modifica della stessa.

*Da capire se inserire procedure per la modifica*.

## DB_Comet

Utente DB con ruolo DB Comet può:

* [x] inserire/modificare dipendente
  * nessun vincolo

* [ ] inserire/modificare Formula
  * la formula non deve essere calendarizzata nel futuro
  * il prodotto deve esistere

* [x] inserire/modificare Formula_MateriaPrima
  * la formula non deve essere calendarizzata nel futuro

* [x] inserire/modificare Linea
  * nessun vincolo

## Cliente

Utente DB con ruolo Cliente può:

* [ ] inserire Vendita
  * [ ] può annullare l'odine solo se in stato RICEVUTO
  * [ ] la necessità di produrre prodotti va gestita lato Vendita

## Fornitore

Utente DB con ruolo Fornitore può:

* [ ] inserire Azienda_MateriaPrima
* [ ] modificare Azienda_MateriaPrima (modifica i parametri QuantitaProdotto, QuantitaMinimaDaAcquistare, PrezzoProdotto)

## Supervisore_Produzione

Utente DB con ruolo Supervisore Produzione che può:

* [ ] inserire turno
  * [ ] da verificare che sia compatibile con le assenze
  * [ ] dipendente è già impegnato in altro turno nel periodo di tempo desiderato
* [ ] inserire calendarioproduzione
  * [ ] da verificare che linea non sia già occupata
  * [ ] le materie prime a disposizione siano presenti (incrociare tabella Acquisto con Calendarioproduzione)
* [ ] leggere formula
* [ ] inserire assenze
  * [ ] non deve essere impegnato in un turno nel periodo desisderato
* [ ] leggere la differenza tra CalendarioProduzione e Vendita

## Produzione

Utente DB con ruolo Produzione può:

* [ ] inserire Eventoproduzione
* [ ] inserire assenze
  * [ ] non deve essere impegnato in un turno nel periodo desisderato
* [ ] leggere turni

## Acquisto

Utente DB con ruolo Acquisto può:

* [x] inserire Azienda
* [ ] inserire Acquisto
  * [ ] rispettare quantità minima acquistabile presente in Azienda_MateriaPrima
* [ ] eliminare acquisto
  * [ ] solo se questo è in stato RICEVUTO
* [ ] leggere Azienda_MateriaPrima (listino)
* [ ] leggere Azienda
* [ ] leggere Calendarioproduzione
* [ ] inserire MateriaPrima
* [ ] inserire Assenza

## Vendita

Utente DB con ruolo Vendita può:

* [ ] leggere Vendita (e verifica la disponibilià del prodotto finito)
* [x] inserire Azienda
* [ ] inserire ProdottoFinito
* [ ] inserire assenze

# NOTE
## Turno:
	Indipendente da CalendarioProduzione. Un dipendente dovrà lavorare il giono X dalle YY alle ZZ, la mansione sarà indefinita.
	I turni saranno inseriti dai supervisori della produzione tenendo conto delle assenze registrate per il dipendente.
	Al momento nessun dipendente ha lo stesso turno, da verificare se possibile dedicare del tempo per sistemare questa problematica
	
## CalendarioProduzione:
	DataFineProduzione potrebbe non essere rispettata.
	Cosa succede se si vuole produrre il triplo della quantità che una formula permette?
	Pertanto, va calcolato all'interno della stored procedure che permetterà di inserire una nuova riga.
	Ad esempio, ho una formula che produce 3000 pezzi di un prodotto. 
	Si vogliono produrre 9000 pezzi di quel prodotto, come si procede?
	Durante l'inserimento di una riga in CalendarioProduzione, l'utente inserirà solo la DataInizioProduzione.
	Così facendo la DataFineProduzione sarà calcolata a partire dai dati sopra scritti: se DataInizioProduzione=2024-06-28 09:00 e il TempoPreparazione di una Formula è 3 ore, allora DataFineProduzione è = 2024-06-28 18:00
