select distinct users.usuario as usuario, if(any_value (year(data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') as condicao_usuario
	from SpotifyClone.users
    left join SpotifyClone.historico on users.id = historico.usuario_id and year(historico.data_reproducao) = 2021
    order by users.usuario
