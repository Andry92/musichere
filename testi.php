<?php
include 'connessione.php';

$id=$_GET['id'];  // Utilizziamo il metodo GET per prelevare l'id della canzone
$query= mysql_query("SELECT testo FROM tracce WHERE id_traccia='$id'");

if(!$query)  // controllo se la query è stata eseguita
	die("Errore nell'esecuzione della query");

$riga=mysql_fetch_array($query);

if($riga['testo']==NULL)
	echo "Nessun testo trovato nel database";
else
{
	echo "<form action='stampa_commenti.php' style='text-align: left;'>";
			echo "<button style='background-color: #607D8B;border:none;color: white;padding: 8px 20px;text-decoration: none;display: inline-block;font-size: 16px;cursor:pointer; border-radius: 10px;'
					type='submit' name='commenti'>
						<b>Torna ai commenti</b></button>";
	echo "</form>";

	//echo "<a href='stampa_commenti.php'>Torna ai commenti</a><br>";
	echo $riga['testo'];
}

?>
