<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta content="utf-8" http-equiv="encoding">

	<link rel="stylesheet" type="text/css" href="css/stile.css" />
	<script language="javascript" type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="js/lettore.js"></script>
</head>

<body bgcolor="#607D8B">
	<div id="testata">
		<div id="contenuto_testata">
			<div id="link">
				<a href="index.php"> <img src="minilogo.png" width="80" height="70"></a>
			</div>
			<div id="carrelloelog">
				<div id="carrello">
					<a href="carrello.php" target="openlink"> <img src="carrello.png" title="Carrello" width="40" height="40";></a>
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
								echo "<a href='login.php'>Login</a> | <a href='registrazione.php'>Registrati</a>";
						echo "</div>";
			    	}
				?>
			</div>
		</div>
	</div>
</body>
</html>
