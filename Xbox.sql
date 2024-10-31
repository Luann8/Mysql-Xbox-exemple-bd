create database xbox;

Use xbox;

CREATE TABLE pais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    codigo CHAR(3)
);

-- Tabela para Moeda
CREATE TABLE moeda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    simbolo CHAR(3)
);

-- Tabela para Usuário
CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(50),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

-- Tabela para Jogo
CREATE TABLE jogo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    id_moeda INT,
    FOREIGN KEY (id_moeda) REFERENCES moeda(id)
);

-- Tabela para DLC (Downloadable Content)
CREATE TABLE dlc (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_jogo INT,
    preco DECIMAL(10, 2),
    id_moeda INT,
    FOREIGN KEY (id_jogo) REFERENCES jogo(id),
    FOREIGN KEY (id_moeda) REFERENCES moeda(id)
);

-- Tabela para Conquista
CREATE TABLE conquista (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200),
    id_jogo INT,
    FOREIGN KEY (id_jogo) REFERENCES jogo(id)
);

-- Tabela para Assinatura
CREATE TABLE assinatura (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50),
    data_inicio DATE,
    data_fim DATE,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

-- Tabela para Compra
CREATE TABLE compra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_compra DATE,
    total DECIMAL(10, 2),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

-- Tabela para Itens de Compra
CREATE TABLE item_compra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT,
    id_jogo INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_compra) REFERENCES compra(id),
    FOREIGN KEY (id_jogo) REFERENCES jogo(id)
);

-- Populando 

-- Países
INSERT INTO pais (nome, codigo) VALUES ('Canadá', 'CAN');
INSERT INTO pais (nome, codigo) VALUES ('Reino Unido', 'GBR');

-- Moedas
INSERT INTO moeda (nome, simbolo) VALUES ('Euro', 'EUR');
INSERT INTO moeda (nome, simbolo) VALUES ('Libra', 'GBP');

-- Usuários
INSERT INTO usuario (nome, email, senha, id_pais) VALUES ('Ana Costa', 'ana@example.com', 'senha789', 3);
INSERT INTO usuario (nome, email, senha, id_pais) VALUES ('Lucas Pereira', 'lucas@example.com', 'senha101', 4);

-- Jogos
INSERT INTO jogo (nome, categoria, preco, id_moeda) VALUES ('Cyberpunk 2077', 'RPG', 49.99, 3);
INSERT INTO jogo (nome, categoria, preco, id_moeda) VALUES ('Minecraft', 'Aventura', 29.99, 4);
INSERT INTO jogo (nome, categoria, preco, id_moeda) VALUES ('GTA V', 'Ação', 39.99, 1);
INSERT INTO jogo (nome, categoria, preco, id_moeda) VALUES ('Red Dead Redemption 2', 'Aventura', 59.99, 2);

-- DLCs
INSERT INTO dlc (nome, id_jogo, preco, id_moeda) VALUES ('Cyberpunk 2077 - Expansão', 3, 14.99, 3);
INSERT INTO dlc (nome, id_jogo, preco, id_moeda) VALUES ('Minecraft - DLC Aquático', 4, 9.99, 4);
INSERT INTO dlc (nome, id_jogo, preco, id_moeda) VALUES ('GTA V - Expansão', 5, 19.99, 1);
INSERT INTO dlc (nome, id_jogo, preco, id_moeda) VALUES ('Red Dead Redemption 2 - Expansão', 6, 24.99, 2);

-- Conquistas
INSERT INTO conquista (descricao, id_jogo) VALUES ('Finalizou Cyberpunk 2077', 3);
INSERT INTO conquista (descricao, id_jogo) VALUES ('Construiu um Castelo em Minecraft', 4);
INSERT INTO conquista (descricao, id_jogo) VALUES ('Completou todas as missões em GTA V', 5);
INSERT INTO conquista (descricao, id_jogo) VALUES ('Chegou ao nível máximo em Red Dead Redemption 2', 6);

-- Assinaturas
INSERT INTO assinatura (tipo, data_inicio, data_fim, id_usuario) VALUES ('Mensal', '2024-02-01', '2024-02-28', 3);
INSERT INTO assinatura (tipo, data_inicio, data_fim, id_usuario) VALUES ('Anual', '2024-03-01', '2025-02-28', 4);

-- Compras
INSERT INTO compra (data_compra, total, id_usuario) VALUES ('2024-11-01', 149.95, 2);
INSERT INTO compra (data_compra, total, id_usuario) VALUES ('2024-12-01', 79.98, 3);
INSERT INTO compra (data_compra, total, id_usuario) VALUES ('2024-12-15', 99.98, 4);

-- Itens de Compra
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (2, 1, 2, 49.99);
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (2, 2, 1, 59.99);
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (3, 3, 1, 49.99);
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (3, 4, 1, 29.99);
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (4, 5, 1, 39.99);
INSERT INTO item_compra (id_compra, id_jogo, quantidade, preco_unitario) VALUES (4, 6, 1, 59.99);
