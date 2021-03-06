/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização. */ 

-- Criação do banco de dados --
create database db_e_commerce;

-- Selecionando para uso o banco de dados --
use db_e_commerce;

-- Criação da tabela de produtos no E-Commerce --
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null, 
    quantidade int,
    preco decimal(10,2) not null, 
    peso decimal(4,2),
    primary key(id)
);

-- Seleção de toda a tabela --
select * from tb_produtos;