/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização. */

-- Criação do banco de dados --
create database db_escola_panoca;

-- Setando a database para uso --
use db_escola_panoca;

-- Criação da tabela de estudantes na escola Panoca --
create table tb_estudantes(
	id bigint auto_increment,
	nome varchar(255) not null, 
    nota decimal(4,2) not null, 
    pronome varchar(20),
    turma int,
    primary key(id)
);