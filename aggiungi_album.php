<?php
	include 'connessione.php';
	$id_album=$_POST['id_album'];
	$id_user=$_POST['id_user'];
	$bandiera=0;


	$count1=mysql_query("SELECT COUNT(carrello.id_traccia) AS totale FROM carrello JOIN tracce WHERE carrello.id_traccia=tracce.id_traccia AND id_utente='$id_user' AND album LIKE '$id_album'");
	$row1 = mysql_fetch_assoc($count1);

	$count2=mysql_query("SELECT COUNT(id_traccia) AS totale FROM tracce WHERE album LIKE '$id_album'");
	$row2 = mysql_fetch_assoc($count2);

	//echo "$row1['totale'] $row2['totale']";
	if($row1['totale'] == $row2['totale'])
		$bandiera=1;


	$query_check=mysql_query("SELECT carrello.id_traccia FROM carrello JOIN tracce WHERE carrello.id_traccia=tracce.id_traccia 	AND id_utente='$id_user' AND album LIKE '$id_album'");

	$num_rows = mysql_num_rows($query_check);

	if($num_rows >= 1 && $bandiera == 0)
	{
		$query_delete=mysql_query("DELETE carrello.* FROM carrello JOIN tracce WHERE id_utente='$id_user' AND 							carrello.id_traccia=tracce.id_traccia AND album LIKE '$id_album'");
		if($query_delete)
		{
			$query_album=mysql_query("INSERT INTO carrello(id_utente,id_traccia,flag)
									SELECT'$id_user',id_traccia,1 FROM tracce WHERE album LIKE '$id_album'");
			echo "delete";
		}
		else
			echo "query delete non a buon fine";
	}
	elseif ($bandiera == 1) 
	{
		echo "error";
	}
	else
	{
		$query_album=mysql_query("INSERT INTO carrello(id_utente,id_traccia,flag)
			SELECT'$id_user',id_traccia,1 FROM tracce WHERE album LIKE '$id_album'");

		if($query_album)
			echo "ok";
	}

	mysql_close($conn);
?>
