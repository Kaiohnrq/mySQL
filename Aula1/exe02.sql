create database db_loja;

use db_loja;

create table tb_produtos(
id bigInt auto_increment,
nome varchar(255),
preco decimal(7,2),
datavalidade date,
estoque bigInt,
primary key(id)
);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Creme Dental", 5.99, "2022-09-09", 999);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Placa de video", 899.99, "2029-09-01", 5);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Notebook", 5000.00, "2029-09-01", 6);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Pringles", 15.99, "2029-10-05", 15);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Caneta", 2.99, "2029-10-06", 200);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Cadeira Gamer", 799.00, "2029-10-06", 13);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Televisao", 599.00, "2029-10-06", 16);

INSERT INTO tb_produtos(nome, preco, datavalidade, estoque)
VALUES("Café", 15.99, "2022-12-05", 30);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 4.99 WHERE id = 1;
