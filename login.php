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
	   
	   $query = "SELECT id,nome FROM utenti WHERE email='$email' AND password='$password'";
	   $result = mysql_query($query,$conn);
	   
	   $num_rows = mysql_num_rows($result);
	   if($num_rows == 1) 
	   {
	         header("Location:home.php");
	         $array = mysql_fetch_array($result);
	         $_SESSION ['user']=$array['id'];
	         $_SESSION ['nome']=$array['nome'];
		}
		else
		   echo "<center>Dati errati <a href='login.php'>Ritenta</a></center>";
	}
?>

</body>
</html>
