create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment, 
    descricao varchar(255),
    ativo boolean,
    primary key(id)
);

insert into tb_categoria(descricao,ativo) values ("Bootcamp Java", 1);
insert into tb_categoria(descricao,ativo) values ("Bootcamp Mobile", 1);
insert into tb_categoria(descricao,ativo) values ("Bootcamp FullStack", 1);
insert into tb_categoria(descricao,ativo) values ("Bootcamp Back-End", 1);
insert into tb_categoria(descricao,ativo) values ("Bootcamp Front-End", 1);

create table tb_curso(
	id bigint auto_increment, 
    nome varchar(255),
    preco decimal(10,2),
    abordagem varchar(255),
    empresa varchar(255),
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Bootcamp Java", 0, "FullStack em Java", "Generation Brasil", 1);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Bootcamp .NET", 0, "C# e criação de APIs e uso do framework Asp.net Core5", "Generation Brasil", 4);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("DESENVOLVIMENTO FULL-STACK", 0, "Várias linguagens como Javascript, ReactJs, NodeJs", "DIO", 3);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Discover", 0, "Fundamentos da programação, Guia JavaScript e etc", "Rocketseat", 3);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Pro", 814.80, "Acesse Discover, Ignite, Higher, nosso suporte e outras experiências", "Rocketseat", 3);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("React Native", 1020, "Acesso a TODOS os cursos da plataforma", "Alura", 2);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Vitalício", 1200.00, "Acesso a Todos os Cursos de UX/UI e Front-end", "Origamid", 5);
insert into tb_curso(nome,preco,abordagem,empresa, categoria_id) values ("Introdução à linguagem Python", 0, "Aprenda a desenvolver programas de computador", "Udemy", 4);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like "%J%";

select * from tb_curso inner join tb_categoria where tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where tb_curso.categoria_id = 3;