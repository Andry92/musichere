<?php 
	include 'connessione.php';

     $testo="SELECT commento,data,ora,nome FROM commenti JOIN utenti WHERE id_utente=utenti.id"; 
     if(!$query = mysql_query($testo)) /* eseguo la query e controllo se va a buon fine*/ 
          echo('Errore: non riesco a eseguire la query');

     while($array = mysql_fetch_array($query))
         echo "	<font color='red'>\n".$array['commento']."</font> <br>
          <strong>".$array['nome']."</strong> - ".$array['data']." - ".$array['ora']." <br><br>"; 

     mysql_close($conn); 
?> 