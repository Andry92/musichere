<?php
	include 'connessione.php';

     $commento = $_POST['commento'];
     $data = date('Y/m/d');
     $testo="INSERT INTO commenti(commento,data) VALUES ('$commento','$data')";
     
     if(!mysql_query($testo)) /*eseguo la query e controllo se va a buon fine*/
		  echo('Errore: non riesco a eseguire la query');

     mysql_close($conn);

     header("Location:leggi.php");
?>