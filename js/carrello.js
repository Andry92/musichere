function aggiungi(id_traccia,id_user)
{
	if(id_user==0)
		window.alert("Devi effettuare il login per aggiungere tracce al carrello.");
	else
	{
		$.ajax({
				/* Metodo con cui viene mandata la variabile alla pagina */
				type:"POST",
				/* Pagina a cui viene inviata la variabile id */
				url:"aggiungi_traccia.php",
				
				/* Valori che vengono inviati alla pagina "aggiungi_traccia.php" */
				data:"id_traccia="+id_traccia+"&id_user="+id_user,

				success:function(msg)
				{
						window.alert("Canzone aggiunta nel carrello!");
				},
		});
	}
}

function elimina(id_traccia,id_user)
{
		$.ajax({
				/* Metodo con cui viene mandata la variabile alla pagina */
				type:"POST",

				/* Pagina a cui viene inviata la variabile id */
				url:"elimina_traccia.php",
				
				/* Valori che vengono inviati alla pagina "elimina_traccia.php" */
				data:"id_traccia="+id_traccia+"&id_user="+id_user,

				success:function(msg)
				{
						window.alert("Canzone eliminata dal carrello!");
						window.location = 'carrello.php';
				},
		});	
}

