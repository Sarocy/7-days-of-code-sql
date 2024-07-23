SELECT COUNT(*) AS total_filmes FROM filmes; 

SELECT AVG(valor) AS media_avaliacoes FROM avaliacoes JOIN filmes ON filmes.id_avaliacao = avaliacoes.id_avaliacao; 

SELECT MAX(valor) AS maior_avaliacao, MIN(valor) AS menor_avaliacao FROM avaliacoes;
