<?php
include 'connessione.php';

$email=$_POST['email_utente'];

if($email == '')
	echo "<script>alert('Non hai inserito nulla!');
			window.location='admin.php';</script>";
else
{
	$query=mysql_query("UPDATE utenti SET admin=1 WHERE email='$email'");

	if(mysql_affected_rows()>0)
		echo "<script>alert('Privilegi concessi!');
				window.location='index.php';</script>";
	else
		echo "<script>alert('Email non trovata!');
			window.location='admin.php';</script>";
}
?>