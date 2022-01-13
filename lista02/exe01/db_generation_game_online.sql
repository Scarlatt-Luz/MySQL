/* Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe. */

create database db_generation_game_online;

use db_generation_game_online;

/* Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online. */

create table tb_classe(
	id bigint auto_increment,
    nome varchar(255),
    quant_games int,
    primary key(id)
);

/* Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários
 para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela) */
 
 create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    historia varchar(500),
    tipo_poder varchar(150),
    poder_ataque int not null, 
    poder_defesa int not null,
    id_categoria bigint not null,
    primary key(id),
    foreign key (id_categoria) references tb_classe(id)
 );
 