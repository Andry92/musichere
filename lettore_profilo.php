<?php
	session_start();
	include 'connessione.php';

	$user=$_SESSION['user'];
	$id=$_POST['id'];

	// effettuiamo la query per prelevare l'id della canzone scelta dall'utente
	$search_traccia=mysql_query("SELECT Canzoni,artista,titolo FROM tracce JOIN carrello WHERE tracce.id_traccia='$id' AND carrello.id_traccia='$id' AND flag=1 AND id_utente='$user'");
	$canzone=mysql_fetch_array($search_traccia);
	// preleviamo il percorso della canzone
	$url=$canzone['Canzoni'];
	$song=$canzone['titolo'];
	$artista=$canzone['artista'];

	// stampiamo il player
	echo "<marquee behavior='scroll' direction='left'>$artista - $song</marquee>";
	echo "<audio controls='controls' autoplay='autoplay'>
		    <source src='".$url."' type='audio/mpeg' />
		  </audio>";


	
?>
