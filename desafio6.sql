select min(plano.valor_plano) as faturamento_minimo, max(plano.valor_plano) as faturamento_maximo, round(avg(plano.valor_plano), 2) as faturamento_medio, sum(plano.valor_plano) as faturamento_total
	from SpotifyClone.plano
    inner join SpotifyClone.users on plano.id = users.plano_id