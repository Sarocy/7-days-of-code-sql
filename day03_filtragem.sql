SELECT * FROM filmes WHERE id_avaliacao IN (SELECT id_avaliacao FROM avaliacoes WHERE valor > 4.5); 

SELECT * FROM filmes WHERE id_genero IN (SELECT id_genero FROM generos WHERE nome = 'Drama'); 

SELECT * FROM filmes WHERE id_diretor IN (SELECT id_diretor FROM diretores WHERE nome = 'Christopher Nolan'); 

SELECT * FROM filmes WHERE id_avaliacao IN (SELECT id_avaliacao FROM avaliacoes WHERE valor BETWEEN 4 AND 5);
