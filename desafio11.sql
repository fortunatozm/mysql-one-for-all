select musicas.cancoes as nome_musica, concat(musicas.artista_id, '-', musicas.cancoes) as novo_nome
	from SpotifyClone.musicas