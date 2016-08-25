<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta content="utf-8" http-equiv="encoding">
	<link rel="stylesheet" type="text/css" href="css/acquisto.css" />
</head>

<body bgcolor="#607D8B">

	<div id="testata">
		<div id="contenuto_testata">
			<div id="link">
				<a href="index.php"><img id="logo2" src="logo2.png" title="Torna alla Home" width="350" height="210"></a>
			</div>
			<div id="utente">
				<?php
		            session_start();
		            include 'connessione.php'; 
				    $id_user = $_SESSION ['user'];
					$name = $_SESSION['nome'];
					$surname = $_SESSION['cognome'];
					$email = $_SESSION['email'];
					echo "<h2>$name $surname</h2>";
					echo $email;
				?>
			</div>
		</div>
	</div>

	<?php
	if(!isset($_POST['submit']))
	{
	?>
		<div id="contenuto_acquisto">
			<center>
					<table id="pagamento">
						<tr> <td><h1>Totale: <?php echo  $_POST['acquisto'].'€'; ?></h1></td> </tr>
					    <form method="post" action="#">
					    	<tr> <td><h3>Metodo di pagamento</h3></td>
							<td>
							    <select name="tipo_pagamento">
					  			<option value="">Seleziona...</option>
					  			<option value="CDC">Carta di credito</option>
					  			<option value="PP">Paypal</option>
								</select>
							</td>  </tr>
							<tr> <td><h3>Codice Carta</h3></td>
								 <td><input type="text" name="cod_carta" maxlength="16" size="16"></td> 
							</tr>
							<tr> <td><h3>Data Scadenza</h3></td>
								 <td><input type="month" name="scadenza"></td> 
							</tr>
							<tr> <td><h3>CVC/CVV</h3></td>
								 <td><input type="password" name="cvc" maxlength="3" size="3"></td> 
							</tr>
							<tr> 
								<td><button class='acquisto' type='submit' name='submit' value='ok'>
											<b>Concludi Acquisto</b></button>
								</td> 
							</tr>
						</form>
					</table>
			</center>
		</div>
	<?php
	}
	else
	{
	        $query=mysql_query("SELECT copertina,album,num_traccia,titolo,anno,genere,prezzo FROM carrello JOIN tracce WHERE id_utente='$id_user' AND carrello.id_traccia=tracce.id_traccia");
	      	$riga = mysql_fetch_array($query);
	      
	      	echo "<h2><center>Riepilogo Ordine</center></h2>";
	      	echo "<table style='margin-left: 200px;' cellspacing='3'>";
	      	echo "<h3 style='margin-left: 200px; float: left;'>Lista tracce</h3>";
	      	echo "<h3 style='margin-left: 856px;'>Dettagli pagamento</h3>";
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
				echo "</tr>";
				$riga=mysql_fetch_array($query);
			}
			echo "</table>";
	}
	?>


</body>
</html>
