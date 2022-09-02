create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigInt auto_increment,
tipoPizza varchar(255) not null,
tamanho varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Doce", "Brotinho");

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Doce", "Média");

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Doce", "Grande");

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Salgada", "Brotinho");

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Salgada", "Média");

INSERT INTO tb_categorias(tipoPizza, tamanho)
VALUES("Salgada", "Grande");

create table tb_pizzas(
id bigInt auto_increment,
nome varchar(255) not null,
preco decimal(10,2),
datVal date,
categoria_id bigInt,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Mussarela", 49.90, "2022-09-21", 5);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Calabresa", 49.90, "2022-09-22", 5);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Romeu e Julieta", 39.90, "2022-09-22", 1);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("4 Queijos", 99.90, "2022-09-23", 6);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Banana", 69.90, "2022-09-23", 2);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Baiana", 79.90, "2022-09-23", 6);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("Sorvete", 79.90, "2022-09-23", 2);

INSERT INTO tb_pizzas(nome, preco, datVal, categoria_id)
VALUES("A moda da casa", 109.90, "2022-09-23", 6);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, preco, datVal, tb_categorias.tipoPizza
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT nome, preco, datVal, tb_categorias.tipoPizza
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tipoPizza = "Salgada";