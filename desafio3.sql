select users.usuario, count(historico.usuario_id) as qtde_musicas_ouvidas, round(sum(musicas.duracao_segundos/60), 2) as total_minutos
	from SpotifyClone.users
    inner join SpotifyClone.historico on users.id = historico.usuario_id
    inner join SpotifyClone.musicas on musicas.id = historico.musica_id
    group by usuario;
