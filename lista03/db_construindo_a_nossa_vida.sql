create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment, 
	departamento varchar(255),
    quantidade int,
    primary key(id)
);

insert into tb_categoria(departamento,quantidade) values ("Argamassa e Rejuntes", 800);
insert into tb_categoria(departamento,quantidade) values ("Climatização e Ventilação ",515);
insert into tb_categoria(departamento,quantidade) values ("Ferragens",199);
insert into tb_categoria(departamento,quantidade) values ("Impermeabilizantes",791);
insert into tb_categoria(departamento,quantidade) values ("Marcenaria e Madeiras",152);

create table tb_produto(
	id bigint auto_increment,
    descricao varchar(255),
    valor decimal(7,2),
    marca varchar(255),
    peso decimal(5,2),
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("CimenFlex",29.99,"Cimentolit",20.00,1);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Fortaleza",19.99,"Bostik",20.00,1);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Cortina de Ar",899.00,"Agratto",8.40,2);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Ar Condicionado Inverter",3400.00,"Daikin",0.65,2);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Prego Ardox Polido",41.90,"Gerdau",1,3);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Prego de Aço Temperado Niquelado",11.69,"Fikiss",0.057,3);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Manta Asfáltica Tipo II",335.90,"Dryko",43.00,4);
insert into tb_produto(descricao, valor, marca, peso, categoria_id) values ("Painel Hdf BP 1 Face Branco",197.90,"Berneck",37.42,5);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where descricao like "%C%";

select * from tb_produto inner join tb_categoria where tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where tb_produto.categoria_id = 1;