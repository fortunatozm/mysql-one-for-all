select convert(round(min(plano.valor_plano), 2), nchar) as faturamento_minimo, convert(round(max(plano.valor_plano), 2), nchar) as faturamento_maximo, convert(round(avg(plano.valor_plano), 2), nchar) as faturamento_medio, convert(round(sum(plano.valor_plano), 2), nchar) as faturamento_total
	from SpotifyClone.plano
    inner join SpotifyClone.users on plano.id = users.plano_id