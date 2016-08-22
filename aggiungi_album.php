<?php
	include 'connessione.php';
	$id_album=$_POST['id_album'];
	$id_user=$_POST['id_user'];
	
	$query=mysql_query("INSERT INTO carrello(id_utente,id_traccia,flag)
								SELECT'$id_user',id_traccia,1 FROM tracce WHERE album LIKE '$id_album'");

	if (!$query)
	{
		echo "<script> 
			alert('Prima di inserire album, togli dal carrello le canzoni che hai inserito del album in considerazione.');
			</script>";
		echo "Errore di inserimento dei dati nel database";
	}
?>
