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


 if(isset($_SESSION['user']))     // se l'utente ha effettuato il login
 {
	$user=$_SESSION['user'];
	$ricerca= mysql_query("SELECT tracce.id_traccia,copertina,album,num_traccia,titolo,anno,genere,prezzo FROM tracce JOIN carrello WHERE id_utente=$user AND carrello.id_traccia=tracce.id_traccia");
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
				echo "<td> <img src='x.png' title='Elimina dal carrello!' id='img_x' 
						onclick='elimina(".$riga['id_traccia'].",".$user.");'> </td>";
						
				$riga=mysql_fetch_array($ricerca);
			}
		echo "</table>";
	}
 }
 else
	echo "Non hai effettuato l'accesso!";
?>

</body>
</html>
