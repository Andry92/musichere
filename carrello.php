<html>
<head> 
	<link rel="stylesheet" type="text/css" href="css/ricerca.css" /> 
</head>
<body>

<?php 
session_start();
include 'connessione.php';


 if(isset($_SESSION['user']))     // se l'utente ha effettuato il login
 {
	$user=$_SESSION['user'];
	$ricerca= mysql_query("SELECT copertina,album,num_traccia,titolo,anno,genere,prezzo FROM tracce JOIN carrello WHERE id_utente=$user AND carrello.id_traccia=tracce.id_traccia");
	$riga=mysql_fetch_array($ricerca);
 if($riga){
 echo "<table id='discografia' cellspacing='3'>";
			echo "<caption>  
					<th></th>
					<th>Carrello</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th>Prezzo</th>
					<th>Quantità</th>
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
				$riga=mysql_fetch_array($ricerca);
		}
	}
 }
 else
	echo "Non hai effettuato l'accesso!";
				/*$id=$_GET['id'];
$query= mysql_query("SELECT testo FROM tracce WHERE id_traccia='$id'");*/


/* echo "<td>  <form action='aggiungi_traccia.php' method='post' id='quantita'>
							<select name='qnt'>
								<option value='1'>1</option>
								<option value='2'>2</option>
								<option value='3'>3</option>
								<option value='4'>4</option>
								<option value='5'>5</option>
								<option value='6'>6</option>
								<option value='7'>7</option>
								<option value='8'>8</option>
								<option value='9'>9</option>
								<option value='10'>10</option>
							</select>
							<input type='submit' value='Aggiungi'>
						</form> </td>"; */

?>

</body>
</html>