select
  (select COUNT(id) from SpotifyClone.musicas) as cancoes,
  (select COUNT(id) from SpotifyClone.artista) as artistas,
  (select COUNT(id) from SpotifyClone.albuns) as albuns;