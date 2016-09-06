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
				<a href="index.php"><img id="logo2" src="logo2.png" width="350" height="210"></a>
			</div>
			<div id="utente">
				<?php
		            session_start();
		            include 'connessione.php';
				    $id_user = $_SESSION ['user'];
					$name = $_SESSION['nome'];
					$surname = $_SESSION['cognome'];
					$email = $_SESSION['email'];
					echo "<h2>Profilo Amministratore<br></h2> <h3>$name $surname</h3>";
					echo $email;
				?>
			</div>
		</div>
	</div>

<?php 
if(!isset($_POST['inserisci']) && !isset($_POST['modifica'])){
?>

	<div id="inserisci_e_modifica">
				<center>
						<form name='admin' action="#" method="post">
						<tr><td><button class='acquisto' type='submit' name='inserisci'>
						<b>Inserisci una nuova traccia</b></button></td></tr>
						<br>
						<tr><td><button class='acquisto' type='submit' name='modifica'>
						<b>Modifica il prezzo di una traccia</b></button></td></tr>
						</form>
				</center>
			</div>
			
<?php 
}
elseif(isset($_POST['inserisci'])){
	echo "<div id='inseriredati'>";
	?>
		<center>
		<form action="upload.php" method="post" enctype="multipart/form-data">
			<table id="pagamento" cellspacing="5">
				<h2>Inserimento nuova traccia<h2>
				<tr><td><h3>Album:</h3></td>
				<td><input type="text" name="album"></td></tr>
				<tr><td><h3>Titolo:</h3></td>
				<td><input type="text" name="titolo"></td></tr>
				<tr><td><h3>Artista:</h3></td>
				<td><input type="text" name="artista"></td></tr>
				<tr><td><h3>Num. traccia:</h3></td>
				<td><input type="text" name="num_traccia"></td></tr>
				<tr><td><h3>Anno:</h3></td>
				<td><input type="text" name="anno"></td></tr>
				<tr><td><h3>Genere:</h3></td>
				<td><input type="text" name="genere"></td></tr>
				<tr><td><h3>Percorso canzone:</h3></td>
				<td><input type="file" name="canzoni"></td></tr>
				<tr><td><h3>Copertina:</h3></td>
				<td><input type="file" name="copertina"></td></tr>
				<tr><td><h3>Testo:</h3></td>
				<td><textarea name='testo'></textarea></td></tr>
				<tr><td><h3>Prezzo(&#8364):</h3></td>
				<td><input type="text" name="prezzo"></td></tr>
			</table>
			<tr><td><button class='acquisto' type='submit' name='nuova_traccia'>
			<b>Aggiungi nuova traccia</b></button></td></tr>
		</form>
		<form action="admin.php">
			<tr><td><button class='acquisto' type='submit' name='ritorna'>
			<b>Ritorna alla home admin</b></button></td></tr>
		</form>
		</center>
	<?php
	echo"</div>";
}
else {
?>
	<div id='modificaprezzo'>
		<center>
			<table id="pagamento">
				<tr> <td><h1>Modifica prezzi</h1></td> </tr>
				<form name='modifica_prezzo' action="modifica_prezzo.php" method="post">
					<tr> 
						<td><h3>Inserisci il nome della traccia</h3></td>
						<td><input type="text" name="nome_traccia"></td> 
					</tr>
					<tr> 
						<td><h3>Inserisci il nuovo prezzo</h3></td>
						<td><input type="text" name="prezzo"></td> 
					</tr>
					<tr>
						<td>
							<button class='acquisto' type='submit'>
								<b>Modifica Prezzo</b>
							</button>
						</td>
					</tr>
				</form>
			</table>
		</center>
	</div>
<?php
}
?>

</body>
</html>