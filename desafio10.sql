select musicas.cancoes as nome, count(historico.musica_id) as reproducoes
	from SpotifyClone.musicas
    inner join SpotifyClone.historico on historico.musica_id = musicas.id
    inner join SpotifyClone.users on users.id = historico.usuario_id and (users.plano_id = 1 or users.plano_id = 4)
    group by musicas.cancoes
    order by reproducoes desc, nome asc