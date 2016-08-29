<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta content="utf-8" http-equiv="encoding">
	<link rel="stylesheet" type="text/css" href="css/acquisto.css" />

	<script type="text/javascript">
		function validateForm()
		{
		    var x = document.forms["ins_dati"]["tipo_pagamento"].value;
		    var y = document.forms["ins_dati"]["cod_carta"].value;
		    var z = document.forms["ins_dati"]["scadenza"].value;
		    var j = document.forms["ins_dati"]["cvc"].value;

		    if (x == "" || y.length < 16 || z == "" || j.length < 3)
		    {
		        alert("Inserisci tutti i campi!");
		        return false;
		    }
		}
	</script>
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
						<tr> <td><h1>Totale: <?php echo number_format($_POST['acquisto'],2).'€'; ?></h1></td> </tr>
					    <form name='ins_dati' action="#" method="post" onsubmit="return validateForm()">
					    	<tr> 
					    		<td><h3>Metodo di pagamento</h3></td>
								<td>
								    <select name="tipo_pagamento">
						  			<option value="">Seleziona...</option>
						  			<option value="Carta di credito">Carta di credito</option>
						  			<option value="Paypal">Paypal</option>
									</select>
								</td>
							</tr>
							<tr> 
								<td><h3>Codice Carta</h3></td>
								<td><input type="text" name="cod_carta" maxlength="16" size="16"></td> 
							</tr>
							<tr> 
								<td><h3>Data Scadenza</h3></td>
								<td><input type="month" name="scadenza"></td> 
							</tr>
							<tr> 
								<td><h3>CVC/CVV</h3></td>
								<td><input type="password" name="cvc" maxlength="3" size="3"></td> 
							</tr>
							<tr> 
								<td><button class='acquisto' type='submit' name='submit' 
										value='<?php echo $_POST['acquisto']?>'><b>Continua Acquisto</b></button>
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
		echo "<div id='tracceedutente'>";
			echo "<h2><center>Riepilogo Ordine</center></h2>";
			echo "<table style='float: left; margin-left: 100px;' cellspacing='3'>";
			echo "<h3 style='margin-left: 100px; float: left;'>Lista tracce</h3>";
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
				
			echo "<table style='float: left; margin-left: 291px;' cellspacing='3'>";
				echo "<td>Tipo di pagamento: </td>";
				echo "<td>".$_POST['tipo_pagamento']."</td>";
				echo "<tr>";
				echo "<td>Codice della carta: </td>";
				echo "<td>".$_POST['cod_carta']."</td>";
				echo "<tr>";
				echo "<td>Totale: </td>";
				echo "<td>".number_format($_POST['submit'],2)."€</td>";
				echo "<tr>";
				echo "<td>".date('Y/m/d h:i:sa')." "."</td>";

				echo "<tr>";
    				$cod_carta=$_POST['cod_carta'];
				    $data=date('Y/m/d h:i:sa');
				    $metodo=$_POST['tipo_pagamento'];
				    $totale=$_POST['submit'];
				    
				    $query=mysql_query("INSERT INTO fattura(id_utente,metodo,totale,data,cod_carta)
				          VALUES('$id_user','$metodo','$totale','$data','$cod_carta')");
				    
				    
				    echo "<form action='conferma.php' method='post'>";
				    echo "<td><button class='acquisto' type='submit' name='conferma' value='<?php echo $query ?>'>
				             <b>Conferma</b></button></td>";
				             
				    echo "</form>";
			echo "</table>";
		echo"</div>";
	
		$cod_carta=$_POST['cod_carta'];
		$data=date('Y/m/d h:i:sa');
		$metodo=$_POST['tipo_pagamento'];
		$totale=$_POST['submit'];
			
		$query=mysql_query("INSERT INTO fattura(cod_carta,data,id_utente,metodo,totale)
						VALUES('$cod_carta','$data',$id_user,'$metodo','$totale')");
	}
	?>

</body>
</html>