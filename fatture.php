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
			if($riga['cod_carta'])
				echo "<tr> <td><b>Numero della carta: </b></td><td>".$riga['cod_carta']." </td></tr>";

			echo "<tr> <td><b>Metodo di Pagamento: </b></td><td>".$riga['metodo']." </td></tr>";
			echo "<tr> <td><b>Data di fatturazione: </b></td><td>".$riga['data']." </td></tr>";
			echo "<tr> <td><b>Totale: </b></td><td>".$riga['totale']."€ </td></tr>";
			
			$riga=mysql_fetch_array($query);
		}
		echo "</table>";
		
		$query=mysql_query("SELECT album,num_traccia,titolo,anno,acquisto.prezzo 
			FROM tracce JOIN carrello JOIN acquisto JOIN fattura 
			WHERE acquisto.id_utente=fattura.id_utente AND fattura.id_utente='$user' AND carrello.id_utente='$user' AND acquisto.id_traccia=carrello.id_traccia AND carrello.id_traccia=tracce.id_traccia AND fattura.id='$id_fattura' AND acquisto.data=fattura.data 
			ORDER BY album,num_traccia asc");
			
		$riga=mysql_fetch_array($query);			
			if(!$riga)
				echo "La query non è andata a buon fine.";
			else
			{
				echo "<table>";
				echo "<br>";
				echo "<caption>  
						<th>Lista dei brani</th>
						<th></th>
						<th></th>
						<th></th>
						<th>Prezzo</th>
					</caption>";

				while($riga)
					{
						echo "<tr>";
							echo "<td>".$riga['album']."</td>";
							echo "<td>".$riga['num_traccia']."</td>";
							echo "<td>".$riga['titolo']."</td>";
							echo "<td>".$riga['anno']."</td>";
							echo "<td>&nbsp;".$riga['prezzo'].'€'."</td>";
						echo "</tr>";
						$riga=mysql_fetch_array($query);
					}			
		echo "</table>";
			}
	}

	echo "<br><br><a href='profilo.php'>Torna indietro</a>";


?>