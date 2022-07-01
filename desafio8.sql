select artista.nome as artista, albuns.album as album
	from SpotifyClone.artista
    inner join SpotifyClone.albuns on artista.id = albuns.artista_id and artista.nome = 'Walter Phoenix'
    order by album