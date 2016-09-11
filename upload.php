<?php
	include 'connessione.php';
	$album=$_POST['album'];
	$titolo=$_POST['titolo'];
	$artista=$_POST['artista'];
	$num_traccia=$_POST['num_traccia'];
	$anno=$_POST['anno'];
	$genere=$_POST['genere'];
	$canzoni=$_FILES['canzoni']['name'];
	$copertina=$_FILES['copertina']['name'];
	$testo=mysql_real_escape_string($_POST['testo']);
	$prezzo=$_POST['prezzo'];

	$url="Tracce/".$artista;
	if (!file_exists($url)) {
		mkdir($url, 0777, true);
	}

	$url=$url."/".$album;
	if (!file_exists($url)) {
		mkdir($url, 0777, true);
	}

	$url = $url."/";
	//Recupero il percorso temporaneo del file
	$userfile_tmp = $_FILES['canzoni']['tmp_name'];

	//recupero il nome originale del file caricato
	$userfile_name = $_FILES['canzoni']['name'];

	//copio il file dalla sua posizione temporanea alla mia cartella upload
	move_uploaded_file($userfile_tmp, $url . $userfile_name)


	$url2="Copertine/";

	//Recupero il percorso temporaneo del file
	$userfile_tmp2 = $_FILES['copertina']['tmp_name'];

	//recupero il nome originale del file caricato
	$userfile_name2 = $_FILES['copertina']['name'];

	//copio il file dalla sua posizione temporanea alla mia cartella upload
	move_uploaded_file($userfile_tmp2, $url2 . $userfile_name2)

	$url=$url.$_FILES['canzoni']['name'];
	$url2=$url2.$_FILES['copertina']['name'];

	$query=mysql_query("INSERT INTO tracce(album,titolo,artista,num_traccia,anno,genere,Canzoni,copertina,testo,prezzo)
											VALUES ('$album','$titolo','$artista',$num_traccia,'$anno','$genere',
													'$url','$url2','$testo',$prezzo)");

	if($query)
	   	echo "<script>alert('Traccia aggiunta!');
				window.location='admin.php';</script>";	
	else
		echo "<script>alert('Errore di inserimento nel database!');
						window.location='admin.php';</script>";

	mysql_close($conn);

?>