<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta content="utf-8" http-equiv="encoding">
</head>

<body bgcolor="#607D8B">

	<div id="testata" style="background:#455A64;width:100%;height:230px;top:0;left:0;position:fixed;">
		<div id="contenuto_testata">
			<div id="link">
				<a href="index.php"><img src="logo2.png" title="Torna alla Home" width="350" height="210" 
					style="margin-top: 15px; margin-left:200px; float:left;"></a>
			</div>
			<div id="utente" style="width: 220px;float: right;margin-top:80px; margin-right:200px;">
				<?php
		            session_start();
		            include 'connessione.php'; 
				   
					$name = $_SESSION['nome'];
					$surname = $_SESSION['cognome'];
					$email = $_SESSION['email'];
					echo "<b>$name $surname</b><br>";
					echo $email;
				?>
			</div>
		</div>
	</div>

	<div id="contenuto_acquisto" style="position:fixed;">

		<tr>
			<form method="post" action="#">
			    <td>Inserisci il metodo di pagamento:</td>
			    <td><select name="tipo_pagamento">
  				<option value="">Seleziona...</option>
  				<option value="CDC">Carta di credito</option>
  				<option value="PP">Paypal</option>
				</select></td> </tr>

			</form>

	</div>


</body>
</html>
