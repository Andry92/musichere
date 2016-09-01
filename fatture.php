<?php
	session_start();
	include 'connessione.php';

	$id_fattura=$_GET['id_fattura'];
	$user=$_SESSION['user'];

	$query=mysql_query("SELECT metodo,totale,data,cod_carta FROM fattura WHERE id_utente='$user' AND id='$id_fattura'");
	$riga=mysql_fetch_array($query);

	if(!$riga)
		echo "La query non è andata a buon fine.";
	else
	{
		echo "<table>";
		echo "<h2>FATTURA #$id_fattura</h2>";
		while($riga)
		{
			echo "<tr> <td>Metodo di Pagamento: ".$riga['metodo']."</td> </tr>";
			echo "<tr> <td>Totale: ".$riga['totale']."</td> </tr>";
			echo "<tr> <td>Data: ".$riga['data']."</td> </tr>";
			echo "<tr> <td>Numero della carta: ".$riga['cod_carta']."</td> </tr>";

			$riga=mysql_fetch_array($query);
		}

		echo "</table>";
	}

	echo "<br><br><a href='profilo.php'>Torna indietro</a>";


?>