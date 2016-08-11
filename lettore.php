<?php
	include 'connessione.php';
	$id=$_POST['id'];
	// effettuiamo la query per prelevare l'id della canzone scelta dall'utente
	$search_traccia=mysql_query("select Canzoni,artista,titolo from tracce where id_traccia='$id'");
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
		echo "<audio id='sample' controls='controls' autoplay='loop'>
			    <source src='".$url."' type='audio/mpeg' />
			  </audio>";
	}

	echo "<script>
			audio=document.getElementById('sample');
			audio.addEventListener('timeupdate',
			function()
			{
				if(audio.currentTime >= 30)
				{
					audio.currentTime=0;
				}
				audio.play();
			});
		  </script>";
?>
