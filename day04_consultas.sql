
SELECT filmes.titulo, diretores.nome AS diretor
FROM filmes
JOIN diretores ON filmes.id_diretor = diretores.id_diretor;


SELECT filmes.titulo, generos.nome AS genero
FROM filmes
JOIN generos ON filmes.id_genero = generos.id_genero;


SELECT filmes.titulo, avaliacoes.valor AS avaliacao
FROM filmes
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao;


SELECT filmes.titulo, diretores.nome AS diretor, generos.nome AS genero, avaliacoes.valor AS avaliacao
FROM filmes
JOIN diretores ON filmes.id_diretor = diretores.id_diretor
JOIN generos ON filmes.id_genero = generos.id_genero
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao;
