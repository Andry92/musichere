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
		include 'connessione.php';

		session_start();
		if(isset($_POST['submit']))
		{
			$errore=0; //variabile di controllo errori (se rimane a 0 non ci sono errori)

			if($_POST['email']=="")
				$errore=1;
			else
			{
				$result=mysql_query("SELECT id,password FROM utenti WHERE email='".$_POST['email']."' limit 0,1",$conn);

				if(mysql_num_rows($result)>0)
					$row=mysql_fetch_array($result);
				else
					$errore=1;
			}
			//se non ci sono stati errori, invio le informazioni a nuova_password.php
			if($errore==0)
			{
	   			$num_rows = mysql_num_rows($result);
	   			if($num_rows == 1) 
	   			{	
	        		header("Location:nuova_password.php");
		        	$_SESSION ['user']=$row['id'];
		      		$_SESSION ['password']=$row['password'];
				}
			}
			else
				echo "Email non esistente.";
		}
	?>

	<!-- FORM BASE
	L'utente inserisce la sua email (che dovrà corrispondere a quella salvata nel database).
	-->

	<center> <table>
			  <tr>
		  <form method="post" action="" id="login">
			  <td>Inserisci Email:</td>
			  <td><input type="text" name="email"></td> </tr>
			  <td><input type="submit" value="Invia" name="submit"></td>
		  </form>
		  </table> </center>

</body>
</html>