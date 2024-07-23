DELIMITER //

CREATE PROCEDURE adicionar_filme (
IN p_titulo VARCHAR(255), 
IN p_id_diretor INT, 
IN p_id_genero INT, 
IN p_id_avaliacao INT
)
BEGIN
    INSERT INTO filmes (titulo, id_diretor, id_genero, id_avaliacao) 
    VALUES (p_titulo, p_id_diretor, p_id_genero, p_id_avaliacao);
END //

DELIMITER ;

CALL adicionar_filme('Matrix', 1, 2, 3);

DELIMITER //

CREATE PROCEDURE atualizar_avaliacao (
    IN p_id_filme INT, 
    IN p_nova_avaliacao FLOAT
)
BEGIN
    UPDATE filmes 
    SET id_avaliacao = (
        SELECT id_avaliacao 
        FROM avaliacoes 
        WHERE valor = p_nova_avaliacao 
        LIMIT 1
    )
    WHERE id_filme = p_id_filme;
END //

DELIMITER ;

CALL atualizar_avaliacao(1, 4.8);
