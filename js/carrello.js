/* Funzione per aggiungere una traccia singola */
function aggiungi(id_traccia,id_user)
{
	if(id_user==0)
		window.alert("Devi effettuare il login per aggiungere tracce al carrello.");
	else
	{
		$.ajax({
				/* Metodo con cui viene mandata la variabile alla pagina */
				type:"POST",

				/* Pagina a cui vengono inviate le variabili id */
				url:"aggiungi_traccia.php",
				
				/* Valori che vengono inviati alla pagina "aggiungi_traccia.php" */
				data:"id_traccia="+id_traccia+"&id_user="+id_user,

				success:function(data)
				{
					if(data=='ok')
						window.alert("Canzone aggiunta nel carrello!");
					else
						window.alert('Canzone già aggiunta nel carrello!');
				},
		});
	}
}

/* Funzione per eliminare una traccia singola */
function elimina(id_traccia,id_user)
{
		$.ajax({
				/* Metodo con cui viene mandata la variabile alla pagina */
				type:"POST",

				/* Pagina a cui viene inviata la variabile id */
				url:"elimina_traccia.php",
				
				/* Valori che vengono inviati alla pagina "elimina_traccia.php" */
				data:"id_traccia="+id_traccia+"&id_user="+id_user,

				success:function(data)
				{
					if(data=='ok')
					{
						window.alert('Canzone eliminata dal carrello!');
						window.location = 'carrello.php';
					}
					else
						window.alert('Errore');
				},
		});	
}

/* Funzione per aggiungere un album */
function aggiungi_album(id_album,id_user)
{
	if(id_user==0)
		window.alert("Devi effettuare il login per aggiungere l'album al carrello.");
	else
	{
		$.ajax({
				/* Metodo con cui viene mandata la variabile alla pagina */
				type:"POST",
				
				/* Pagina a cui vengono inviate le variabili id */
				url:"aggiungi_album.php",
				
				/* Valori che vengono inviati alla pagina "aggiungi_album.php" */
				data:"id_album="+id_album+"&id_user="+id_user,

				success:function(data)
				{
					if(data=='delete')
						window.alert("Carrello aggiornato!");
					else if(data=='ok')
						window.alert('Album aggiunto nel carrello!');
					else if(data=='error')
						window.alert('Album già aggiunto nel carrello!');
				},
		});
	}
}
