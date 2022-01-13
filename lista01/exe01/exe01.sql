/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização. */

-- Criação do banco de dados --
create database db_rh_gen;

-- Selecionando o banco de dados --
use db_rh_gen;

-- Criação da tabela funcionaries na Gen --
create table tb_funcionaries_gen(
	id bigint auto_increment,
    nome varchar(255),
    pronome varchar(10),
    setor varchar(50),
    salario decimal(20,2),
    primary key(id)
);