<?php 
	session_start();
	include 'connessione.php';

	$id_user = $_SESSION ['user'];
	$data=date('Y/m/d h:i:sa');
	$cod_carta=$_POST['cod_carta'];
	$metodo=$_POST['tipo_pagamento'];
	$totale=$_POST['totale'];

	mysql_query("INSERT INTO fattura(id_utente,metodo,totale,data,cod_carta)
					     VALUES('$id_user','$metodo','$totale','$data','$cod_carta')");

	/* Utilizzo la data per associare le tracce acquistate alla determinata fattura */
	mysql_query("INSERT INTO acquisto(id_utente,id_traccia,data)
						SELECT '$id_user',id_traccia,'$data' FROM carrello WHERE flag=0 AND id_utente='$id_user'");

	$aggiorna=mysql_query("UPDATE carrello SET flag=1");

	echo "<script>
	   		window.alert('Transazione completata con successo! Troverai le tue canzoni e le fatture sul tuo profilo! Ritorno nella home');
	   		window.location='index.php';
	    </script>";
?>