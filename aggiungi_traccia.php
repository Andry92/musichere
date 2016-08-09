<?php
	include 'connessione.php';
	$id_traccia=$_POST['id_traccia'];
	$id_user=$_POST['id_user'];
	
	$query=mysql_query("INSERT INTO carrello(id_utente,id_traccia)
								VALUES('$id_user','$id_traccia')",$conn);

	if (!$query)
		echo "Errore di inserimento dei dati nel database";
?>
