
<?php 
include 'connessione.php';
session_start();

 if(isset($_SESSION['user']))     // se l'utente ha effettuato il login
 {
echo "<table id='discografia' cellspacing='3'>";
			echo "<caption>  
					<th></th>
					<th>Album</th>
					<th>Num.</th>
					<th>Titolo</th>
					<th>Anno</th>
					<th>Genere</th>
					<th>Prezzo</th>
				</caption>";
 }
 else
	echo "Non hai effettuato l'accesso!";
				/*$id=$_GET['id'];
$query= mysql_query("SELECT testo FROM tracce WHERE id_traccia='$id'");*/


?>