<?php
	session_start();
	include 'connessione.php';
				
if(isset($_SESSION['user']))
	$user=$_SESSION['user'];

	$id=$_POST['id'];

	// effettuiamo la query per prelevare l'id della canzone scelta dall'utente
	$search_traccia=mysql_query("SELECT Canzoni,artista,titolo FROM tracce WHERE id_traccia='$id'");
	$canzone=mysql_fetch_array($search_traccia);
	// preleviamo il percorso della canzone
	$url=$canzone['Canzoni'];
	$song=$canzone['titolo'];
	$artista=$canzone['artista'];
	
	if (!isset($url) || $url=='')
		echo "Canzone non presente nel database!";
	else
	{
		// stampiamo il player
		echo "<marquee behavior='scroll' direction='left'>$artista - $song</marquee>";
		echo "<audio id='sample' controls='controls' autoplay='autoplay'>
			    <source src='".$url."' type='audio/mpeg' />
			  </audio>";

		echo "<script>
			audio=document.getElementById('sample');
			audio.addEventListener('timeupdate',
			function()
			{
				if(audio.currentTime >= 30)
				{
					audio.pause();
					audio.currentTime=0;
				}
			});
		  </script>";
	}

	
?>
