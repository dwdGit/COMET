# COMET

COMET simula la gestione degli acquisti, delle venditi e della produzione di un'azienda di body care.

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

### DB_Comet

Utente DB con ruolo DB Comet può:

* [x] inserire/modificare dipendente
  * nessun vincolo

* [x] inserire/modificare Formula
  * la formula non deve essere calendarizzata nel futuro
  * il prodotto deve esistere

* [x] inserire/modificare Formula_MateriaPrima
  * la formula non deve essere calendarizzata nel futuro

* [x] inserire/modificare Linea
  * nessun vincolo

### Cliente

Utente DB con ruolo Cliente può:

*La necessità di produrre prodotti va gestita lato Vendita*.

* [x] inserire Vendita

* [x] inserire Dettaglio_Vendita

* [x] modificare Dettaglio_Vendita
  * [x] può modificare l'ordine solo se in stato RICEVUTO
  * [x] il prodotto indicato deve esistere

* [x] annullare Vendita
  * [x] può annullare l'odine solo se in stato RICEVUTO

### Fornitore

Utente DB con ruolo Fornitore può:

* [x] inserire Azienda_MateriaPrima

* [x] modificare Azienda_MateriaPrima
  * [x] (modifica i parametri QuantitaProdotto, QuantitaMinimaDaAcquistare, PrezzoProdotto)

### Supervisore_Produzione

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

### Produzione

Utente DB con ruolo Produzione può:

* [ ] inserire Eventoproduzione
* [ ] inserire assenze
  * [ ] non deve essere impegnato in un turno nel periodo desisderato
* [ ] leggere turni

### Acquisto

Utente DB con ruolo Acquisto può:

*modificare insert e tabella in quanto referenzia i prodotti finiti, mentre deve referenziare le materie prima*.

* [x] inserire Azienda
* [ ] inserire Acquisto
  * [ ] rispettare quantità minima acquistabile presente in Azienda_MateriaPrima
* [ ] annullare acquisto
  * [ ] solo se questo è in stato RICEVUTO
* [ ] leggere Azienda_MateriaPrima (listino)
* [ ] leggere Azienda
* [ ] leggere Calendarioproduzione
* [ ] inserire MateriaPrima
* [ ] inserire Assenza

### Vendita

Utente DB con ruolo Vendita può:

* [ ] leggere Vendita (e verifica la disponibilià del prodotto finito)
* [x] inserire Azienda
* [ ] inserire ProdottoFinito
* [ ] inserire assenze


## Stored Procedure

### Acquisto

Generare gli acquisti delle materie prime a partire dal calendario produzione.

## Trigger

### Formula

Ad ogni modifica, va verificato se la formula è calendarizzata nel futuro. Se è calendarizzata, va eseguita un'eccezione.

### Acquisto

All'inserimento lo stato dell'acquisto deve essere RICEVUTO.

Ad ogni inserimento/modifica, va verificato se DataConsegna >= DataOrdine.

Ad ogni modifica, va verificato se DataConsegna >= DataOrdine.

### Vendita

Ad ogni modifica, va verificato se DataConsegna >= DataOrdine.

Ad ogni modifica, va verificato se StatoOrdine = 'RICEVUTO', altrimenti non è possibile procedere con la modifica.

### Turno

Alla modifica o all'inserimento di un turno, verificare se un utente ha già un turno programmato nella data indicata.

Alla modifica o all'inserimento di un turno, verificare che un turno non abbia durata maggiore alle 8 ore.

Alla modifica o all'inserimento di un turno, verificare che il turno non capiti in periodo dove il dipendente è assente (verifica tabella Assenza).

### CalendarioProduzione

All'inserimento o alla modifica, verificare se la linea non è già occupata nel periodo di tempo indicato.

All'inserimento o alla modifica, verificare se le materie prime necessarie siano presenti. Potremmo inserire un dato nella tabella Azienda_MateriaPrima *GIORNICONSEGNAPREVISTA* che ci permette di capire se la materia prima è mancante ed è possibile da acquistare e ricevere prima della data di produzione indicata.

## Viste

* [x] inventario materie prime
* [x] inventario prodotti finiti

## NOTE

### DettaglioVendita

Da rivedere DDL tabella in quanto risulta essere diversa rispetto alle altre relazioni (vedi primary e foreign key).

### ProdottoFinito

E' stata aggiunta la colonna *CostoUnitario* in modo da calcolare il costo totale della Vendita a partire dalla quantità inserita dal cliente.

### Turno

	Indipendente da CalendarioProduzione. Un dipendente dovrà lavorare il giono X dalle YY alle ZZ, la mansione sarà indefinita.
	I turni saranno inseriti dai supervisori della produzione tenendo conto delle assenze registrate per il dipendente.
	Al momento nessun dipendente ha lo stesso turno, da verificare se possibile dedicare del tempo per sistemare questa problematica 
	(nel caso si riesca a trovare una soluzione andare a modificare anche il diagramma ER e relazionale)
	
### CalendarioProduzione

	DataFineProduzione potrebbe non essere rispettata.
	Cosa succede se si vuole produrre il triplo della quantità che una formula permette?
	Pertanto, va calcolato all'interno della stored procedure che permetterà di inserire una nuova riga.
	Ad esempio, ho una formula che produce 3000 pezzi di un prodotto. 
	Si vogliono produrre 9000 pezzi di quel prodotto, come si procede?
	Durante l'inserimento di una riga in CalendarioProduzione, l'utente inserirà solo la DataInizioProduzione.
	Così facendo la DataFineProduzione sarà calcolata a partire dai dati sopra scritti: se DataInizioProduzione=2024-06-28 09:00 e il TempoPreparazione di una Formula è 3 ore, allora DataFineProduzione è = 2024-06-28 18:00
