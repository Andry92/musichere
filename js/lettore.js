function mostra(id){
	$.ajax({
			/* Metodo con cui viene mandata la variabile alla pagina */
			type:"POST",
			/* Pagina a cui viene inviata la variabile id */
			url:"lettore.php",
			/* Valori che vengono inviati alla pagina "lettore.php" */
			data:"id="+id,
			/* Il risultato della pagina lettore.php verrà visualizzato nel div "lettore" */
			/*success:function(msg)
			{
				$("#lettore").html(msg);
			}*/
	});
}