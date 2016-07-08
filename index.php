<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>MusicHere</title>
	<link rel="stylesheet" type="text/css" href="css/stile.css" />
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.20" />
</head>

<body bgcolor="#607D8B">
	<center><img src="logo2.png" width="350" height="210"></center>
	<?php
      if(!isset($_POST['submit']))
      {
	?>
		<center>
			<table>
			 <form action="#" method="post">
				<tr>
		 			<td>Nome:</td>
		 			<td><input type="text" name="nome"></td> </tr>
		 			<td>Cognome:</td>
		 			<td><input type="text" name="cognome"></td> </tr>
		 			<td>Email:</td>
		 			<td><input type="text" name="email"></td> </tr>
		 			<td>Password:</td>
		 			<td><input type="password" name="password"></td> </tr>
		 			<td><input type="submit" value="Registrati!" name="submit"></td>
	    	</table>
	    </center>
	 	</form>
	 	<br />
	 	<center>Se hai già effettuato la registrazione, effettua l'<a href="login.php">accesso!</a></center>
	<?php
 	 }
  	 	else
  	 {
	  include 'connessione.php';
	  
	  $nome = mysql_real_escape_string($_POST['nome']);                   // per prevenire attacchi informatici
      $cognome = mysql_real_escape_string($_POST['cognome']);
      $email = mysql_real_escape_string($_POST['email']);
      $password = mysql_real_escape_string($_POST['password']);
      
      $query= "INSERT INTO utenti(nome,cognome,email,password) 
                           VALUES('$nome','$cognome','$email','$password')";	// data_nascita
      $result = mysql_query($query,$conn);
      
      if(!$result)
      {
          die("Errore nella query.");
	  }
	  else
	  {
		  if($nome == NULL || $email == NULL || $password == NULL)
			  echo "<center>Campo dati vuoto! <a href='index.php'>Ritenta</a></center>";
	      else
			  echo "<center>Registrazione Effettuata! Effettua l'<a href='login.php'>Accesso!</a><center>";
      }
   }  
	?>

 </body>
</html>
