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

		$user = $_SESSION ['user'];
		$password = $_SESSION ['password'];


		$result=mysql_query("SELECT email FROM utenti WHERE id='$user' AND password='$password' limit 0,1",$conn);

		   	if(mysql_num_rows($result) == 1)
			{
				if(isset($_POST['submit']))
				{
					if ($_POST['old']==$password)
					{
						if(strlen($_POST['new'])>0)
						{
							if(mysql_query("UPDATE utenti SET password='".$_POST['new']."' WHERE id='$user' AND password='$password'",$conn))
							{
								echo "Password modificata ";
								echo '<a href="login.php" style="color: blue">Effettua il login</a>';
							}
							else
								echo "Database error";
						}
						else
							echo "La nuova password non può essere vuota";
					}
					else
						echo "Password non coincidente.";
				}
			}
			else
				echo "Dati errati";

	?>

	<center><table>
	 <form action="#" method="post">
		<tr>
	 		<td>Vecchia Password:</td>
	 		<td><input type="password" name="old"></td> </tr>
	 		<td>Nuova Password:</td>
	 		<td><input type="password" name="new"></td> </tr>
	 		<td><input type="submit" value="Modifica" name="submit"></td>	    
	 </table></center>
	 </form>

</body>
</html>