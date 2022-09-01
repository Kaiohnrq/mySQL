create database db_empresa;

use db_empresa;

create table tb_colaboradores(
id bigInt auto_increment,
nome varchar(255) not null,
cpf varchar(11) not null,
salario decimal,
cargo varchar(255),
data_admissao date,
primary key(id)
);

INSERT INTO tb_colaboradores(nome, cpf, salario, cargo, data_admissao)
VALUES ("Kaio Henrique", "12345678911", 1500.00, "desenvolvedor mobile junior", "2022-07-25");

INSERT INTO tb_colaboradores(nome, cpf, salario, cargo, data_admissao)
VALUES ("joaozinho", "12345621311", 2000.00,  "desenvolvedor mobile pleno", "2022-01-10");

INSERT INTO tb_colaboradores(nome, cpf, salario, cargo, data_admissao)
VALUES ("Murilo Couto", "98765432100", 2000.00, "Desenvolvedor mobile pleno", "2022-01-20");

INSERT INTO tb_colaboradores(nome, cpf, salario, cargo, data_admissao)
VALUES ("Alexandre sabino", "65432178955", 1500.00, "Desenvolvedor junior", "2022-08-14");

INSERT INTO tb_colaboradores(nome, cpf, salario, cargo, data_admissao)
VALUES ("Fernanda Carreiro", "12398746599", 4000.00, "Desenvolvedor senior", "2021-05-13");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 4000.00, cargo = "Desenvolvedor senior" WHERE id = 2;

SELECT * FROM tb_colaboradores;
