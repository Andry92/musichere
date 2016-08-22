<html>
<head> 
	<link rel="stylesheet" type="text/css" href="css/ricerca.css" />
	<script language="javascript" type="text/javascript" src="js/libreria1.js"></script>
	<script type="text/javascript" src="js/libreria2.js"></script>
	<script type="text/javascript" src="js/carrello.js"></script>
</head>
<body>

<?php 
session_start();
include 'connessione.php';
$tot=0;		// variabile utilizzata per calcolare il totale del prezzo

if(isset($_SESSION['user']))     // se l'utente ha effettuato il login
{
	$user=$_SESSION['user'];
	$ricerca= mysql_query("SELECT copertina,album,num_traccia,titolo,anno,genere,prezzo,tracce.id_traccia FROM tracce JOIN carrello WHERE id_utente=$user AND carrello.id_traccia=tracce.id_traccia ORDER BY flag,album");
	$riga=mysql_fetch_array($ricerca);
	if($riga)
	{
 		echo "<div id='sfondo'><img src='".$riga['copertina']."'></div>";

	 		echo "<table id='discografia' cellspacing='3'>";
				echo "<caption>  
						<th></th>
						<th>Carrello</th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th>Prezzo</th>
					</caption>";

				// if posizionato qui per conflitti con la funzione elimina (che a sua volta contiene un location)
				if(isset($_POST['svuota_carrello']))
				{
				  	$query=mysql_query("DELETE FROM carrello WHERE id_utente='$user'",$conn);
				  	if($query)
				  		header("Location:carrello.php");
				  	else
				  		echo "Errore nella query.";
				}

				while($riga)
				{
					echo "<tr>";
					$copertina=$riga['copertina'];
					echo "<td><img src='$copertina' width='32px' heigth='32px'></td>";
					echo "<td>".$riga['album']."</td>";
					echo "<td>".$riga['num_traccia']."</td>";
					echo "<td>".$riga['titolo']."</td>";
					echo "<td>".$riga['anno']."</td>";
					echo "<td>".$riga['genere']."</td>";
					echo "<td>".$riga['prezzo']."</td>";
					$tot=$tot+$riga['prezzo'];
					echo "<td> <img src='x.png' title='Elimina dal carrello!' id='img_x' 
							onclick='elimina(".$riga['id_traccia'].",".$user.");'> </td>";
					echo "</tr>";
					$riga=mysql_fetch_array($ricerca);
				}

				echo "</table>";

				echo "<form action='#' method='post' style='float:left;'>";
						echo "<button type='submit' name='svuota_carrello' title='Svuota Carrello' value='Svuota Carrello'
								style='border: none; cursor:pointer; background-color: Transparent;'>
								<img src='clear_cart.png' width='50px' heigth='50px' /> </button>";
					echo "</form>";

				echo "<div id='Tot+Acquista' style='float:right;'>";
					echo "<h3 style='margin-bottom: 0px;'>TOTALE: <i>$tot</i>€</h3>";

					echo "<form action='acquisto.php' target='_top' method='post' style='text-align: center;'>";
						echo "<button class='acquisto' type='submit' name='acquisto' value='acquisto'>
								<b>Acquista</b></button>";
					echo "</form>";



				echo "</div>";
		
	}
	else
		echo "Il carrello è vuoto! Scegli i brani o gli album che desideri ed aggiungili al carrello.";
}
else
	echo "Non hai effettuato l'accesso!";

?>

</body>
</html>
