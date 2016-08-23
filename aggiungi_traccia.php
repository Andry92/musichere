<?php
	include 'connessione.php';
	$id_traccia=$_POST['id_traccia'];
	$id_user=$_POST['id_user'];
	
	$query=mysql_query("INSERT INTO carrello(id_utente,id_traccia,flag)
								VALUES('$id_user','$id_traccia',0)",$conn);

	if($query)
		echo "ok";
	else
		echo "error";

	mysql_close($conn);
?>
