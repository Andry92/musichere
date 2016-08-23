<?php
	include 'connessione.php';
	$id_traccia=$_POST['id_traccia'];
	$id_user=$_POST['id_user'];
	
	$query=mysql_query("DELETE FROM carrello WHERE id_utente='$id_user' AND id_traccia='$id_traccia'",$conn);
	
	if($query)
		echo "ok";
	else
		echo "error";

	mysql_close($conn);
?>