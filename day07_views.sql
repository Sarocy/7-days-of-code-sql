CREATE VIEW view_filmes_detalhes AS
SELECT filmes.titulo, diretores.nome AS diretor, generos.nome AS genero, avaliacoes.valor AS avaliacao
FROM filmes
JOIN diretores ON filmes.id_diretor = diretores.id_diretor
JOIN generos ON filmes.id_genero = generos.id_genero
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao;

SELECT * FROM view_filmes_detalhes;

CREATE VIEW view_filmes_avaliacoes_altas AS
SELECT filmes.titulo, avaliacoes.valor AS avaliacao
FROM filmes
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao
WHERE avaliacoes.valor > 4.5;

SELECT * FROM view_filmes_avaliacoes_altas;
