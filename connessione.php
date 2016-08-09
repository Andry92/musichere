<?php
$host ="localhost";
$user = "root";
$password= "";

error_reporting(E_ALL ^ E_DEPRECATED);	// per i warning delle versioni successive di php
 //Apertura della connessione con il server MySQL
  $conn = mysql_connect($host, $user, $password) ;

 //Controllo se la connessione è riuscita
if(!$conn) 
{ 
     die ('Non riesco a connettermi: ' . mysql_error()); 
} 

 $db=mysql_select_db("musichere",$conn);
if(!$db) 
{ 
     die ('Non posso selezionare il database: ' . mysql_error()); 
} 

?>
