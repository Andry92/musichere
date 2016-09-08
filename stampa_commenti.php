<?php 
	include 'connessione.php';

     $testo="SELECT commento,data,ora,nome FROM commenti JOIN utenti WHERE id_utente=utenti.id ORDER BY data asc, ora asc"; 
     if(!$query = mysql_query($testo)) /* eseguo la query e controllo se va a buon fine*/ 
          echo('Errore: non riesco a eseguire la query');

     while($array = mysql_fetch_array($query))
         echo "<strong> <font color='#00796b'>\n".$array['commento']."</font> </strong> <br>
          <strong>".$array['nome']."</strong> - ".$array['data']." - ".$array['ora']." <br><br>"; 

     mysql_close($conn); 
?> 