<?php 
	include 'connessione.php';

     $testo="SELECT * FROM commenti WHERE 1"; 
     if(!$query = mysql_query($testo)) /* eseguo la query e controllo se va a buon fine*/ 
          echo('Errore: non riesco a eseguire la query');

     while($array = mysql_fetch_array($query))
         echo "<strong>Commento </strong>del ".$array['data'].":<font color='red'>\n".$array['commento']."</font><br>"; 

     mysql_close($conn); 
?> 