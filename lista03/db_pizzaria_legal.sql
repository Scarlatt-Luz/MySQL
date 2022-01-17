-- criação da database
create database db_pizzaria_legal;

use db_pizzaria_legal; 

create table tb_categoria(
	id bigint auto_increment,
    salgado boolean,
    tamanho varchar(50),
    primary key(id)
);

insert into tb_categoria (salgado,tamanho) values (1,"broto");
insert into tb_categoria (salgado,tamanho) values (1,"media");
insert into tb_categoria (salgado,tamanho) values (1,"grande");
insert into tb_categoria (salgado,tamanho) values (2,"broto");
insert into tb_categoria (salgado,tamanho) values (2,"media");

drop table tb_categoria;
drop table tb_pizza;

create table tb_pizza(
	id bigint auto_increment,
    nome varchar(30) not null,
	preco decimal(7,2),
    massa varchar(20) not null,
    qtPizza int not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nome,preco,massa,qtPizza) values ("Mussarela",21.90,"Fina",1);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Portuguesa",30.90,"Integral",2);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Nutella",59.90,"Fina",3);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Maria Bonita",32.70,"Grossa",1);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Frango com Catupiry",20.33,"Frita",1);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Margherita",31.90,"Fina",5);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Brigadeiro",21.70,"Fina",1);
insert into tb_pizza (nome,preco,massa,qtPizza) values ("Nutella com Ovomaltine",43.90,"Grossa",4);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
