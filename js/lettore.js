function mostra(id)
{
	$.ajax({
			/* Metodo con cui viene mandata la variabile alla pagina */
			type:"POST",
			/* Pagina a cui viene inviata la variabile id */
			url:"lettore.php",
			/* Valori che vengono inviati alla pagina "lettore.php" */
			data:"id="+id,
			/* Il risultato della pagina lettore.php verrà visualizzato nel div "lettore" */
			success:function(msg)
			{
				window.scrollTo(0,0);  /* Utilizziamo questa funzione per tornare sopra con la barra di scorrimento
				                          al momento del click sull'immagine */
				$("#lettore").html(msg);
			},
	});
}

function showDiv()
{
	document.getElementById('lettore').style.display="block";
}