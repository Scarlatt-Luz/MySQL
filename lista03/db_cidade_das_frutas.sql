create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    descricao varchar(55) not null, 
    ativo boolean,
    primary key(id)
);

insert into tb_categoria (descricao,ativo) values ("Legumes",1);
insert into tb_categoria (descricao,ativo) values ("Frutas",1);
insert into tb_categoria (descricao,ativo) values ("Verduras",1);
insert into tb_categoria (descricao,ativo) values ("Orgânico",1);
insert into tb_categoria (descricao,ativo) values ("Diversos",1);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null, 
    preco decimal(7,2),
    quant int,
    cortado boolean,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Pitaya", 6.99,459,0,2);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Limão", 2.99,801,0,4);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Melancia", 10.02,113,1,2);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Couve", 15.59,87,1,3);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Mirtilos",9.90,541,0,4);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Alface", 2.50,126,0,3);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Pimentão",2.50,541,0,1);
insert into tb_produto (nome, preco, quant, cortado, categoria_id) values ("Mel Puro",35.00,188,0,5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria where tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_produto.quant, tb_categoria.id, tb_categoria.descricao 
	from tb_produto inner join tb_categoria where tb_categoria.id = tb_produto.categoria_id;
    
select * from tb_produto where tb_produto.categoria_id = 1;