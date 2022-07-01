select any_value(artista.nome) as artista, albuns.album as album, count(users_artistas.usuario_id) as seguidores
	from SpotifyClone.artista
    inner join SpotifyClone.albuns on artista.id = albuns.artista_id
    inner join SpotifyClone.users_artistas on albuns.artista_id = users_artistas.artista_id
    group by album
    order by seguidores desc, artista asc, album asc