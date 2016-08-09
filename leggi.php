<?php 
	 include 'connessione.php';
     $db = mysql_connect($host, $user, $password); /*accedo al database*/ 
     if(!$db)  /*se c'é stato qualche errore:*/ 
          echo('ERRORE: non posso accedere al database!'); 
     mysql_select_db("musichere",$db);  /*scegli il tuo database*/ 
     $testo="SELECT * FROM commenti WHERE 1"; 
     if(!$query = mysql_query($testo,$db)) /*eseguo la query e controllo se va a buon fine ^^*/ 
     echo('Errore: non riesco a eseguire la query');  
     while($array = mysql_fetch_array($query)) 
     { 
         echo "<strong>Commento </strong>del ".$array['data'].":<font color='red'>\n".$array['commento']."</font><br>"; 
     } 
     mysql_close($db); 
?> 