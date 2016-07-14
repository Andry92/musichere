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


/* echo "<td>  <form action='aggiungi_traccia.php' method='post' id='quantita'>
							<select name='qnt'>
								<option value='1'>1</option>
								<option value='2'>2</option>
								<option value='3'>3</option>
								<option value='4'>4</option>
								<option value='5'>5</option>
								<option value='6'>6</option>
								<option value='7'>7</option>
								<option value='8'>8</option>
								<option value='9'>9</option>
								<option value='10'>10</option>
							</select>
							<input type='submit' value='Aggiungi'>
						</form> </td>"; */

?>