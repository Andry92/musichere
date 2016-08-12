<?php
	session_start();
	include 'connessione.php';

	$user=$_SESSION['user'];
    $commento = mysql_real_escape_string($_POST['commento']);
    $data = date('Y/m/d');
    $ora = date('h:i:sa');
    $testo="INSERT INTO commenti(commento,data,ora,id_utente) VALUES ('$commento','$data','$ora','$user')";
     
    if(!mysql_query($testo)) /*eseguo la query e controllo se va a buon fine*/
		echo('Errore: non riesco a eseguire la query');

    mysql_close($conn);

    header("Location:stampa_commenti.php");
?>