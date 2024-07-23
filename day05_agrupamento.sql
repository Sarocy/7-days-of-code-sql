SELECT generos.nome AS genero, COUNT(*) AS total_filmes 
FROM filmes 
JOIN generos ON filmes.id_genero = generos.id_genero
GROUP BY generos.nome; 

SELECT diretores.nome AS diretor, AVG(avaliacoes.valor) AS media_avaliacoes 
FROM filmes 
JOIN diretores ON filmes.id_diretor = diretores.id_diretor 
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao 
GROUP BY diretores.nome; 

SELECT generos.nome AS genero, MAX(avaliacoes.valor) AS maior_avaliacao 
FROM filmes 
JOIN generos ON filmes.id_genero = generos.id_genero 
JOIN avaliacoes ON filmes.id_avaliacao = avaliacoes.id_avaliacao 
GROUP BY generos.nome;
