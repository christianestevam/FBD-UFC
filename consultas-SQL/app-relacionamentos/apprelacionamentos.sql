-- criação das tabelas
CREATE TABLE usuario (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    data_nascimento DATE NOT NULL,
    genero TEXT NOT NULL,
    cidade TEXT NOT NULL,
    profissao TEXT NOT NULL
);

CREATE TABLE hobby (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE curtida (
    id INTEGER PRIMARY KEY,
    id_usuario_origem INTEGER NOT NULL,
    id_usuario_destino INTEGER NOT NULL,
    data_curtida DATETIME NOT NULL,
    FOREIGN KEY (id_usuario_origem) REFERENCES usuario(id),
    FOREIGN KEY (id_usuario_destino) REFERENCES usuario(id)
);

CREATE TABLE chat (
    id INTEGER PRIMARY KEY,
    id_usuario1 INTEGER NOT NULL,
    id_usuario2 INTEGER NOT NULL,
    mensagem TEXT NOT NULL,
    data_envio DATETIME NOT NULL,
    FOREIGN KEY (id_usuario1) REFERENCES usuario(id),
    FOREIGN KEY (id_usuario2) REFERENCES usuario(id)
);

CREATE TABLE usuario_hobby (
    id_usuario INTEGER NOT NULL,
    id_hobby INTEGER NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_hobby) REFERENCES hobby(id),
    PRIMARY KEY (id_usuario, id_hobby)
);

-- inserção de dados
INSERT INTO usuario (id, nome, data_nascimento, genero, cidade, profissao) VALUES
    (1, 'Ana', '2000-01-01', 'Feminino', 'São Paulo', 'Estudante'),
    (2, 'João', '1995-05-20', 'Masculino', 'Rio de Janeiro', 'Engenheiro'),
    (3, 'Maria', '1998-12-31', 'Feminino', 'Belo Horizonte', 'Médica'),
    (4, 'Pedro', '1993-08-15', 'Masculino', 'Curitiba', 'Advogado'),
    (5, 'Mariana', '2001-06-10', 'Feminino', 'Fortaleza', 'Estudante');

INSERT INTO hobby (id, nome) VALUES
    (1, 'Leitura'),
    (2, 'Esportes'),
    (3, 'Música'),
    (4, 'Viagens'),
    (5, 'Arte');

INSERT INTO usuario_hobby (id_usuario, id_hobby) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 2),
    (2, 3),
    (3, 1),
    (3, 3),
    (3, 4),
    (4, 2),
    (5, 3),
    (5, 5);

INSERT INTO curtida (id, id_usuario_origem, id_usuario_destino, data_curtida) VALUES
    (1, 1, 2, '2022-04-01 10:30:00'),
    (2, 1, 4, '2022-04-02 15:45:00'),
    (3, 2, 1, '2022-04-03 08:00:00'),
    (4, 2, 3, '2022-04-04 18:20:00'),
    (5, 3, 1, '2022-04-05 11:10:00'),