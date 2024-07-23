SELECT * FROM filmes ORDER BY titulo; 

SELECT * FROM filmes WHERE id_avaliacao IN (SELECT id_avaliacao FROM avaliacoes) ORDER BY (SELECT valor FROM avaliacoes WHERE id_avaliacao = filmes.id_avaliacao) DESC; 

SELECT * FROM filmes ORDER BY (SELECT nome FROM diretores WHERE id_diretor = filmes.id_diretor);
