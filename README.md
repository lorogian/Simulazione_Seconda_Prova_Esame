# Simulazione_Seconda_Prova_Esame
## Spiegazione del problema e risoluzione

Svilupperemo una applicazione web per l’implementazione della attività di car pooling.
Nella pagina iniziale del sito svilupperemo una sezione dedicata alla login e alla registrazione degli utenti (passeggere, autisti) che a seconda della tipologia del utente che si è loggato verrà fatta apparire una pagina dedicata al utente e differenziata dalla tipologia di esso.
In caso che l`utente identificato risulta una autista gli verrà data la possibilità di condividere il viaggio con gli utenti passeggero.
Per fare ciò inserirà i dettagli del viaggio (partenza, destinazione, tappe, orario, tempo stimato,ecc) e potrà visualizzare gli utenti che hanno fatto richiesta di partecipazione al viaggio con tutti i dati relativi.
Il passeggero avrà una pagina dedicata alla ricerca di un viaggio nella quale inserendo dati relativi al percorso verrà fatta una ricerca che restituirà tutti i vari viaggi a cui potrà partecipare per raggiungere la destinazione indicata.
Ogni richesta che vera fatta da parte di un passeggero dovrà essere confermata da parte del autista.
A fine del viaggio ogni utente avrà la possibilità di mandare un feedback al autista che ha condotto il viaggio, anche il autista potrà avere la possibilità di scrivere un feedback per ogni passeggero.


## spunti delle tabelle (temporanee)

Passeggero:cognome e nome, documento di identità, recapito telefonico ed email

AUTISTI :propri dati: generalità, numero e scadenza patente di guida, dati dell’automobile utilizzata, recapito telefonico, email, fotografia.
automobile:targa, nPosti, foto, capienzaBagagliaio, .

Citta:Nome,cap

Dati_Viaggio:partenza, Destinazione,data, id_passeggero

ass prenotazioni:id_prenotazione, id_viaggio,id_passeggero, validato.

ViaggioAccett:orario, eventuali soste previste alle stazioni di servizio, possibilità
di caricare bagaglio o animali.

Animali:id_passeggero, grandezza(s,m,l,xl),tipo,Nome,microchip 



feedback:id_passegero,voto,commento,id_Autista.
