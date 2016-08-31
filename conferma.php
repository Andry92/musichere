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

	mysql_query("UPDATE carrello SET flag=1");

     echo "<script>
       window.alert('Transazione completata con successo! Troverai le tue canzoni e le fatture sul tuo profilo! Ritorno nella home');
       window.location='index.php';
      </script>";
    
?>