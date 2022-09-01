create database db_escola;

use db_escola;

create table tb_estudantes(
id bigInt auto_increment,
nome varchar(255),
media decimal(3,1),
sala bigInt,
anoformacao bigInt,
situacao varchar(255),
primary key(id)
);

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Joazinho", 3.2, 2, 2021, "Reprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Josefino", 5.8, 2, 2021, "Reprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Jemeremias", 8.0, 3, 2021, "Aprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Kaio", 9.0, 3, 2021, "Aprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Fernanda", 7.2, 3, 2021, "Aprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Bruna", 8.2, 2, 2021, "Aprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("Sona", 6.2, 2, 2021, "Reprovado");

INSERT INTO tb_estudantes(nome, media, sala, anoformacao, situacao)
VALUES("VI", 5.2, 2, 2021, "Reprovado");

SELECT * FROM tb_estudantes WHERE media > 7.0;

SELECT * FROM tb_estudantes WHERE media < 7.0;

UPDATE tb_estudantes SET media = 8.4, situacao = "Aprovado" WHERE id = 1;

SELECT * FROM tb_estudantes;

