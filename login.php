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
	<center> <a href="index.php"><img src="logo2.png" title="Torna all'index" width="350" height="210"></a> </center>
	<?php
		session_start();
	    if(!isset($_POST['submit']))
	    {
	?>
			<center> <table>
			<tr>
			<form method="post" action="#">
			    <td>Email:</td>
			    <td><input type="text" name="email"></td> </tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td> </tr>
				<td></td>
				<td><a href="recupero.php" style="color: blue">Password dimenticata?</a></td> </tr>
				<td><input type="submit" value="Accedi!" name="submit"></td>
			</form>
		    </table> </center>
	<?php
   		}
	    else
	    {
			include 'connessione.php';
		   
		    $email = mysql_real_escape_string($_POST['email']);
		    $password = mysql_real_escape_string($_POST['password']);

		    if($email == NULL || $password == NULL)
		    {
		    	echo "<script>alert('Devi inserire tutti i campi!');
					window.location='login.php';</script>";
		    }
		    else
		    {
				$query = "SELECT id,nome,cognome,admin FROM utenti WHERE email='$email' AND password='$password'";
			    $result = mysql_query($query,$conn);
			   
			    $num_rows = mysql_num_rows($result);
			    if($num_rows == 1) 
			    {
			        header("Location:index.php");
			        $array = mysql_fetch_array($result);
			        $_SESSION ['user']=$array['id'];
			        $_SESSION ['nome']=$array['nome'];
			        $_SESSION ['cognome']=$array['cognome']; // utilizzato per acquisto.php
			        $_SESSION ['email']=$email; // utilizzato per acquisto.php
			        $_SESSION ['admin']=$array['admin'];
				}
				else
					echo "<script>alert('Email o password errati.');
						window.location='login.php';</script>";
			}
		}
	?>

</body>
</html>
