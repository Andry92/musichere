<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<link rel="stylesheet" type="text/css" href="css/stile.css" />
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.20" />
	<script language="javascript" type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>
	<script language="javascript" type="text/javascript" src="js/libreria1.js"></script>
	<script type="text/javascript" src="js/libreria2.js"></script>
	<script  type="text/javascript" src="lettore.js"></script>
</head>

<body bgcolor="#607D8B">
	<div id="testata">
		<div id="contenuto_testata">
			<div id="link">
				<a href="home.php"> <img src="minilogo.png" width="80" height="70"></a>
			</div>
			

			<?php                               // codice php per il controllo del login
	           session_start();
	           if(isset($_SESSION['user']))     // se l'utente ha effettuato il login
	           {
					echo "<div id='logout'>";
							include 'connessione.php';
							$testo = $_SESSION['nome'];
					      	echo "$testo | <a href='logout.php'>Logout</a>";
					echo "</div>";
		    	}
		    	else
		    	{
					echo "<div id='login'>";
							echo "<a href='login.php'>Login</a> | <a href='index.php'>Registrati</a>";
					echo "</div>";
		    	}
			?>
		</div>
	</div>

		<div id="container">
			<div id="sinistra">
				<div id="contenuto">
					  <iframe name='openlink' width='673px' height='512px' frameborder='0'>
					  </iframe>
				</div>
			</div>

			<div id="destra">
				<div id="menu">
				   	<div id="cerca">
						<form action="ricerca.php" target='openlink' method="post">
				  			<select name="ricerca">
					  			<option value="1">Artista</option>
								<option value="2">Album</option>
					  			<option value="3">Traccia</option>
							 </select>
							<input type="text" name="testo"><br>
							<input type="submit" value="Cerca">
						</form>
					</div>
				</div>
				<div id="testi">
				   <iframe name='openlink1' width='300px' height='447px' frameborder='0'>
				   </iframe>
				</div>
			</div>
		</div>
	<div id="footer">
	 	<center><a href="normativa.html">Normative sulla musica online</a></center>
	</div>
</body>
</html>


