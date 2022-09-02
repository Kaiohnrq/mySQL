create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigInt auto_increment,
classes varchar(255),
genero varchar(255),
primary key(id)
);

INSERT INTO tb_classes (classes, genero)
VALUES("Arqueiro", "Masculino");

INSERT INTO tb_classes (classes, genero)
VALUES("Mago", "Masculino");

INSERT INTO tb_classes (classes, genero)
VALUES("Druida", "Feminino");

INSERT INTO tb_classes (classes, genero)
VALUES("Guerreiro", "Feminino");

INSERT INTO tb_classes (classes, genero)
VALUES("Necromante", "Masculino");

create table tb_personagens(
id bigInt auto_increment,
nome varchar(255) not null,
poderAtaque bigInt not null,
poderDefesa bigInt not null,
vida bigInt not null,
categoria_classe bigInt,
primary key(id),
foreign key(categoria_classe) references tb_classes(id)
);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Ronaldinho", 6000, 4300, 10000, 2);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Ferdinando", 6000, 4300, 10000, 2);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Volibear", 3000, 8000, 15000, 4);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Darius", 3000, 8000, 15000, 4);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Ashe", 8000, 2300, 10000, 1);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Sivir", 8000, 2300, 10000, 1);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Yorick", 6000, 6000, 8000, 5);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Vex", 6000, 6000, 8000, 5);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Nami", 4000, 4000, 20000, 3);

INSERT INTO tb_personagens(nome, poderAtaque, poderDefesa, vida, categoria_classe)
VALUES("Nhomi", 1000, 1000, 1000, 3);

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, poderAtaque, poderDefesa, vida, tb_classes.classes
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_classe;

SELECT nome, poderAtaque, poderDefesa, vida, tb_classes.classes 
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_classe
WHERE classes = "Arqueiro";

