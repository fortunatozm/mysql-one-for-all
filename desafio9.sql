select count(historico.musica_id) as quantidade_musicas_no_historico
	from SpotifyClone.historico
    inner join SpotifyClone.users on historico.usuario_id = users.id and users.usuario = 'Bill'