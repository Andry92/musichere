<?php
	include 'connessione.php';
	$id_traccia=$_POST['id_traccia'];
	$id_user=$_POST['id_user'];

	$query_check=mysql_query("SELECT id_traccia FROM carrello WHERE id_utente='$id_user' AND id_traccia='$id_traccia'
		AND flag=1");

	$num_rows = mysql_num_rows($query_check);
	if($num_rows == 1)
	   	echo "acquistato"; 
	else
	{
		$query=mysql_query("INSERT INTO carrello(id_utente,id_traccia,flag)
								VALUES('$id_user','$id_traccia',0)");
			
		if($query)
				echo "ok";
		else
				echo "error";
	}

	mysql_close($conn);
?>
