SELECT * FROM filmes
WHERE id_avaliacao = (SELECT id_avaliacao FROM avaliacoes ORDER BY valor DESC LIMIT 1);

SELECT DISTINCT diretores.nome FROM diretores
JOIN filmes ON diretores.id_diretor = filmes.id_diretor
WHERE filmes.id_genero = (SELECT id_genero FROM generos WHERE nome = 'Drama');

SELECT * FROM filmes
WHERE id_avaliacao IN (SELECT id_avaliacao FROM avaliacoes WHERE valor > (SELECT AVG(valor) FROM avaliacoes));
