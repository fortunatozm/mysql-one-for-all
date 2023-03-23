select musicas.cancoes as cancao, count(historico.musica_id) as reproducoes
	from SpotifyClone.musicas
    inner join SpotifyClone.historico on musicas.id = historico.musica_id
    group by cancoes
    order by reproducoes desc, cancoes asc limit 2;