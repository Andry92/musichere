<?php
include 'connessione.php';

$id=$_GET['id'];  // Utilizziamo il metodo GET per prelevare l'id della canzone
$query= mysql_query("SELECT testo FROM tracce WHERE id_traccia='$id'");

if(!$query)  // controllo se la query è stata eseguita
	die("Errore nell'esecuzione della query.");

$riga=mysql_fetch_array($query);

if($riga)  // controllo se l'attributo testo è stato trovato
	echo $riga['testo'];  // stampa del testo della canzone
elseif($riga == '' || !$riga) 
	echo "Nessun testo trovato";
?>
