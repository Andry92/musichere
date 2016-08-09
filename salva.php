<?php
	include 'connessione.php';
     $commento = $_POST['commento'];
     $data = date('Y/m/d');
     $db = mysql_connect($host, $user, $password); /*accedo al database*/
     if(!$db)  /*se c'é stato qualche errore:*/
          echo('ERRORE: non posso accedere al database!');
     mysql_select_db("musichere",$db);  /*scegli il tuo database*/
     $testo="INSERT INTO commenti (commento,data) VALUES ('$commento','$data')";
     if(!mysql_query($testo,$db)) /*eseguo la query e controllo se va a buon fine ^^*/
		  echo('Errore: non riesco a eseguire la query');
     mysql_close($db);
?>