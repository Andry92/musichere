<?php
include 'connessione.php';

$traccia=$_POST['nome_traccia'];
$nuovo_prezzo=$_POST['prezzo'];

if($traccia == '' || $nuovo_prezzo == '')
	echo "<script>alert('Non hai inserito nulla!');
			window.location='admin.php';</script>";
else
{
	$query=mysql_query("UPDATE tracce SET prezzo=$nuovo_prezzo WHERE titolo LIKE '$traccia'");

	if($query)
		echo "<script>alert('Prezzo modificato!');
				window.location='index.php';</script>";
	else
		echo "<script>alert('Traccia non trovata!');
			window.location='admin.php';</script>";
}
?>