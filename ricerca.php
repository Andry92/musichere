<html>
<head> 
	<link rel="stylesheet" type="text/css" href="css/ricerca.css" /> 
	<script language="javascript" type="text/javascript" src="js/libreria1.js"></script>
	<script type="text/javascript" src="js/libreria2.js"></script>
	<script type="text/javascript" src="js/lettore.js"></script>
	<script type="text/javascript" src="js/carrello.js"></script>
</head>
<body>
	
<?php
session_start();

include 'connessione.php';

if(isset($_SESSION['user']))	// controllo se l'utente è loggato
	$user=$_SESSION['user'];	// id utente prelevato per il carrello
else
	$user=0;					// se non è loggato assegno 0 alla variabile che poi
								// utilizzo per il controllo in carrello.js 
$check=0;	// variabile che utilizzo per controllare se l'utente ha acquistato un album


$cerca=$_POST['ricerca'];
$testo=mysql_real_escape_string($_POST['testo']);

if($cerca=='1')  // ricerca per artista
{   //                                    utilizzo il join per unire le tabelle tracce e artista tramite il nome dell'artista che deve essere quello inserito dall'utente.    Asc sta per crescente
	$ricerca=mysql_query("SELECT id_traccia,Sfondo,copertina,album,nome,titolo,num_traccia,anno,genere,prezzo FROM artisti JOIN tracce ON nome=artista WHERE nome LIKE '$testo%' ORDER BY album,num_traccia asc");
	$riga=mysql_fetch_array($ricerca);                // seleziono la prima riga
	if(!$riga) echo("Nessun artista trovato con nome: ".$testo);   // controllo se l'artista è stato trovato
	else
	{
			echo "<div id='sfondo'><img src='".$riga['Sfondo']."'></div>";  // effettuo le stampe
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
					<th>Prezzo</th>
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
				echo "<td><img src='play.png' title='Play!' id='play' onclick='showDiv(); mostra(".$riga['id_traccia'].");'>
				</td>"; 	// immagine del tasto play [on click è un evento di javascript]
				
				$risultato=$riga['id_traccia'];  // preleviamo l'id della canzone per passare il valore alla variabile $risultato che useremo per la query string per il testo della canzone
			    echo "<td> 	<a id='testo' href='testi.php?id=".$risultato."' target='openlink1'>Testo</a> </td>";

			    echo "<td>".$riga['prezzo']."€</td>";

			    echo "<td> <img src='carrello.png' title='Aggiungi al carrello!' id='img_carrello' 
			    		onclick='aggiungi(".$riga['id_traccia'].",".$user.");'> </td>";
			    
				echo "</tr>";
				$riga=mysql_fetch_array($ricerca);
			}
			echo "</table>";
	}
}

if($cerca=='2')  // ricerca per album
{
	$ricerca=mysql_query("SELECT id_traccia,album,nome,copertina,num_traccia,genere,anno,titolo,prezzo FROM artisti JOIN tracce ON nome=artista WHERE album LIKE '$testo' ORDER BY num_traccia");
	$riga=mysql_fetch_array($ricerca);
	if(!$riga) echo("Nessun album trovato con nome: ".$testo);
	else
	{
		$copertina=$riga['copertina'];
		echo "<div id='sfondo'><img src='".$riga['copertina']."'></div>";
		echo'<div id="lettore"></div>';
			echo "<table id='discografia' cellspacing='3'>";
			echo "<caption>  
					<th></th>
					<th>Num.</th>
					<th>Titolo</th>
					<th>Anno</th>
					<th>Genere</th>
					<th></th>
					<th></th>
					<th>Prezzo</th>
				</caption>";   // utilizzo il tag caption per il titolo delle colonne e la spaziatura tra esse tramite il cellspacing
			while($riga)
			{
				echo "<tr>";
				$copertina=$riga['copertina']; 
				echo "<td><img src='$copertina' width='32px' heigth='32px'></td>";
				echo "<td>".$riga['num_traccia']."</td>";
				echo "<td>".$riga['titolo']."</td>";
				echo "<td>".$riga['anno']."</td>";
				echo "<td>".$riga['genere']."</td>";

				// nel momento in cui clicco nell'immagine, il lettore avvia la canzone con l'id corrispondente
				echo "<td><img src='play.png' title='Play!' id='play' onclick='showDiv(); mostra(".$riga['id_traccia'].");'>
					</td>";	
				// immagine del tasto play [onclick è un evento di javascript]	

				$risultato=$riga['id_traccia'];  // preleviamo l'id della canzone per passare il valore alla variabile $risultato che useremo per la query string per il testo della canzone
			    echo "<td><a href='testi.php?id=".$risultato."' target='openlink1'>Testo</a></td>";
			    echo "<td>".$riga['prezzo']."€</td>";
			    echo "<td> <img src='carrello.png' title='Aggiungi al carrello!' id='img_carrello' 
			    		onclick='aggiungi(".$riga['id_traccia'].",".$user.");'> </td>";
				echo "</tr>";
				$riga=mysql_fetch_array($ricerca); 				    
			}
			echo "</table>";

			$check_carrello=mysql_query("SELECT flag FROM carrello JOIN tracce WHERE id_utente='$user' 
				AND carrello.id_traccia=tracce.id_traccia AND album LIKE '$testo' ");
			$riga=mysql_fetch_array($check_carrello);

			while ($riga) 
			{
				if($riga['flag']==1)
					$check=1;

				$riga=mysql_fetch_array($check_carrello);
			}

			if($check==0)
			{
				echo "<b>Aggiungi l'album al  carrello!</b>";
				echo ' <img src="carrello.png" title="Aggiungi album al carrello!" id="img_carrello" 
			    		onclick="aggiungi_album(\''.$testo.'\','.$user.');"> ';	// i caratteri di escape servono per il passaggio del parametro di tipo stringa
			}
	}	
}

if($cerca=='3') // ricerca per traccia
{
	$ricerca=mysql_query("SELECT id_traccia,nome,album,album,num_traccia,anno,genere,copertina,titolo,prezzo FROM artisti JOIN tracce ON nome=artista WHERE titolo LIKE '$testo%' ORDER BY album");
	$riga=mysql_fetch_array($ricerca);
	if(!$riga) echo("Nessuna traccia trovata con nome: ".$testo);
	else 
	{
		$copertina=$riga['copertina'];
		echo "<div id='sfondo'><img src='".$riga['copertina']."'></div>";
		echo'<div id="lettore"></div>';
			echo "<table id='discografia' cellspacing='3'>";
			echo "<caption>
					<th>Num.</th>
					<th>Titolo</th>
					<th></th>
					<th>Album</th>
					<th>Artista</th>
					<th>Anno</th>
					<th>Genere</th>
					<th></th>
					<th></th>
					<th>Prezzo</th>
				</caption>";   // utilizzo il tag caption per il titolo delle colonne e la spaziatura tra esse tramite il cellspacing
			while($riga)
			{
				echo "<tr>";
				$copertina=$riga['copertina'];
				echo "<td>".$riga['num_traccia']."</td>";
				echo "<td>".$riga['titolo']."</td>";
				echo "<td><img src='$copertina' width='32x' heigth='32px'></td>";
				echo "<td>".$riga['album']."</td>";
				echo "<td>".$riga['nome']."</td>";
				echo "<td>".$riga['anno']."</td>";
				echo "<td>".$riga['genere']."</td>";
				//                      nel momento in cui clicco nell'immagine, il lettore avvia la canzone con l'id corrispondente
				echo "<td><img src='play.png' title='Play!' id='play' onclick='showDiv(); mostra(".$riga['id_traccia'].");'></td>";	
				// immagine del tasto play [on click è un evento di javascript]	
				$risultato=$riga['id_traccia'];  // preleviamo l'id della canzone per passare il valore alla variabile $risultato che useremo per la query string per il testo della canzone
			    echo "<td><a href='testi.php?id=".$risultato."' target='openlink1'>Testo</a></td>";
			    echo "<td>".$riga['prezzo']."€</td>";
			    echo "<td> <img src='carrello.png' title='Aggiungi al carrello!' id='img_carrello' 
			    		onclick='aggiungi(".$riga['id_traccia'].",".$user.");'> </td>";
				echo "</tr>";
				$riga=mysql_fetch_array($ricerca);
			}
			echo "</table>";
    }
}
	mysql_close($conn);
?>

</body>
</html>
