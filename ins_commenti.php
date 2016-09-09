<?php
	session_start();
	include 'connessione.php';

	@$user=$_SESSION['user'];

	if(isset($user))     // se l'utente ha effettuato il login e ha scritto qualcosa nel commento
	{
		$commento = mysql_real_escape_string($_POST['commento']);

		if ($commento != '') 
		{
			$data = date('Y/m/d');
	    	$ora = date('h:i:sa');
	    	$testo="INSERT INTO commenti(commento,data,ora,id_utente) VALUES ('$commento','$data','$ora','$user')";
	     
	    	if(!mysql_query($testo)) /*eseguo la query e controllo se va a buon fine*/
				echo('Errore: non riesco a eseguire la query');

	    	mysql_close($conn);

	    	header("Location:stampa_commenti.php");
		}
		else
		{
			echo "Campo vuoto.";
			header("Refresh:2; url=http://localhost/musichere/stampa_commenti.php");
		}
	}
	else
		echo "Devi effettuare il login per commentare.";
		header("Refresh:3; url=stampa_commenti.php");
?>
