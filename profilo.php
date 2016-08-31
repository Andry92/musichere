<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/ricerca.css" /> 
	<script language="javascript" type="text/javascript" src="js/libreria1.js"></script>
	<script type="text/javascript" src="js/libreria2.js"></script>
	<script type="text/javascript" src="js/lettore.js"></script>

	<script type="text/javascript">
   		$(function()
   		{
        	$('#fatture').click(function() 
	        {
	        	$('#profilo').hide();
	        	$('#div_fatture').show();
	           return false;
	       	});        
   		});

   		$(function()
   		{
   			//$('.group').hide();
        	$("a").click(function(e)
	        {
	        	e.preventDefault();
	        	$("#" + $(this).attr("id")).show().siblings('div').hide();
	       	});        
   		});
</script>
</head>
<body>
<div id="menu">


<?php
echo "<h2><a href='profilo.php'>Profilo</a> | <a href='profilo.php' id='fatture'>Fatture</a></h2>";
?>
</div>

<div id="profilo" class="group">
	<?php
		session_start();
		include 'connessione.php';

		if(isset($_SESSION['user']))	// controllo se l'utente è loggato
			$user=$_SESSION['user'];	// id utente prelevato per il carrello
		else
			$user=0;					// se non è loggato assegno 0 alla variabile che poi
										// utilizzo per il controllo in carrello.js 

		$query=mysql_query("SELECT carrello.id_traccia,copertina,album,num_traccia,titolo,anno,genere 
			FROM carrello JOIN tracce WHERE id_utente='$user' AND carrello.id_traccia=tracce.id_traccia AND flag=1 
			ORDER BY album,num_traccia asc");
		$riga=mysql_fetch_array($query);

		if(!$riga)
			echo "Non hai acquistato nessuna canzone!";
		else
		{
					echo "<div id='lettore'></div>";
					
					echo "<table id='discografia' cellspacing='3'>";
					echo "<caption>  
							<th></th>
							<th>Album</th>
							<th>Num.</th>
							<th>Titolo</th>
							<th>Anno</th>
							<th>Genere</th>
							<th></th>
							<th></th>
							<th></th>
						</caption>";   // utilizzo il tag caption per il titolo delle colonne e la spaziatura tra esse tramite il cellspacing

			while($riga)
			{

						echo "<tr>";
						$copertina=$riga['copertina'];
						echo "<td><img src='$copertina' width='32px' heigth='32px'></td>";
						echo "<td>".$riga['album']."</td>";
						echo "<td>".$riga['num_traccia']."</td>";
						echo "<td>".$riga['titolo']."</td>";
						echo "<td>".$riga['anno']."</td>";
						echo "<td>".$riga['genere']."</td>";

						//           nel momento in cui clicco sull'immagine, il lettore avvia la canzone con l'id corrispondente
						echo "<td><img src='play.png' title='Play!' id='play' onclick='showDiv(); mostra_completa(".$riga['id_traccia'].");'>
						</td>"; 	// immagine del tasto play [on click è un evento di javascript]
						
						$risultato=$riga['id_traccia'];  // preleviamo l'id della canzone per passare il valore alla variabile $risultato che useremo per la query string per il testo della canzone
					    echo "<td> 	<a id='testo' href='testi.php?id=".$risultato."' target='openlink1'>Testo</a> </td>";
					    
						echo "</tr>";
						$riga=mysql_fetch_array($query);
			}
			echo "</table>";
		}
	?>
</div>

<div id="div_fatture" class="group" style="display:none;">
<?php 

$query=mysql_query("SELECT id,metodo,totale,data,cod_carta FROM fattura WHERE id_utente='$user'");
$riga=mysql_fetch_array($query);

if(!$riga)
	echo "Non hai effettuato acquisti!";
else{

	echo "<table>";
	while($riga){
		echo "<tr>";
		echo "<td> <a href='profilo.php' id=".$riga['id'].">Fattura # ".$riga['id']." </a> </td>";

		//echo "<td>".$riga['metodo']."</td>";
		//echo "<td>".$riga['totale']."</td>";
		//echo "<td>".$riga['data']."</td>";
		//echo "<td>".$riga['cod_carta']."</td>";
		echo "</tr>";
		$riga=mysql_fetch_array($query);
		}

	echo "</table>";
	}

?>
</div>

<?php
	echo "<div id='dettagli_fattura' style='display:none;'>
		CIAOOOOOOO DETTAGLIIIIIIIIII
	</div>";
 ?>




</body>
</html>
