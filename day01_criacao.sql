CREATE DATABASE IF NOT EXISTS db_filmes;
USE db_filmes;

CREATE TABLE diretores (
    id_diretor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);
CREATE TABLE avaliacoes (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    valor FLOAT NOT NULL
);

CREATE TABLE filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_diretor INT,
    id_genero INT,
    id_avaliacao INT,
    FOREIGN KEY (id_diretor) REFERENCES diretores(id_diretor),
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
    FOREIGN KEY (id_avaliacao) REFERENCES avaliacoes(id_avaliacao)
);

SHOW TABLES;
