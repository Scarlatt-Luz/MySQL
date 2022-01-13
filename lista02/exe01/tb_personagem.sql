-- Buscando a tabela
SELECT * FROM db_generation_game_online.tb_personagem;

-- Inserções na tabela classe
insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Chun-Li",54, "A primeira personagem jogável do sexo feminino a aparecer em um jogo de luta para ganhar reconhecimento popular, ela apareceu pela primeira vez em Street Fighter II: The World Warrior em 1991.", 
"Wushu, Tai-Chi e Quan-Fa",220, 180, 1);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Feiticeira Escarlate",25, "Feiticeira Escarlate é uma super-heroína que aparece nos quadrinhos americanos publicados pela Marvel Comics. A personagem foi criada pelo roteirista Stan Lee e pelo desenhista Jack Kirby. Sua primeira aparição foi em X-Men # 4 na Era de prata das histórias em quadrinhos americanas.", 
"Absorver e canalizar diversos tipos de energia",1000000,1000000,2);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Ellie",20, "Ellie Williams é uma personagem fictícia da franquia de jogos eletrônicos The Last of Us, da Naughty Dog. No primeiro jogo, o personagem Joel é encarregado de acompanhar Ellie em um Estados Unidos pós-apocalíptico, na tentativa de criar uma cura potencial para uma infecção à qual Ellie é imune.", 
"Imunidade",9809, 7540,4);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Tempestade",45, "Tempestade é uma personagem fictícia de história em quadrinhos do Universo Marvel Comics, alter-ego de Ororo Munroe, e membro dos X-Men. Sua primeira aparição foi em Giant-Size X-Men #1. A personagem foi criado pelo roteirista Len Wein e pelo desenhista Dave Cockrum.", 
"capaz de controlar os elementos climáticos, criar chuvas, tempestades, trovões, relâmpagos, raios, tornados, neve, neblina, etc",850,970, 5);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Erza Scarlet",28, "Erza Scarlet (Eruza Sukaretto) é a maga mais forte da Fairy Tail e também foi a 7ª mestra de guilda durante a ausência de Makarov no X792, porém renunciou seu cargo sendo somente Maga Classe-S, ela é muito famosa por sua magia de reequipar.", 
"Super força,velocidade,resistência,agilidade,usando sua magia única Ex-Quip ela é capaz de criar armaduras especiais.",785,841, 1);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Kaguya Otsutsuki",1000, "A princesa Kaguya Otsutsuki (Otsutsuki Kaguya) é a matriarca do clã Otsutsuki e mãe de Hagoromo Otsutsuki e Hamura Otsutsuki, que viveu muito antes da fundação das aldeias ocultas, durante uma era de guerras intermináveis entre a humanidade. Ela consumiu o fruto da Árvore Divina e se tornou a progenitora do chakra, além de fazer parte da criação da besta que se tornaria conhecida como Dez-Caudas.", 
"Chakra & Proezas Físicas, Ninjutsu, Materialização da Vontade, Transformação da Natureza, Kekkei Mora, Byakugan, Rinne Sharingan.",2548,4980, 5);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Mina Ashido",16, "Mina Ashido (Ashido Mina?), também conhecido como Pinky , é uma aluna da Classe 1-A do 1º Ano do Colégio U.A., treinando para se tornar uma Heroína Profissional.", 
"Ácido",684,780, 2);

insert into tb_personagem (nome, idade, historia, tipo_poder,poder_ataque,poder_defesa, id_categoria) 
values ("Gamora",25, "Gamora é uma personagem fictícia que aparece nas histórias em quadrinhos publicadas pela Marvel Comics. Criada por Jim Starlin, a personagem apareceu pela primeira vez em Strange Tales #180. Gamora é a filha adotiva de Thanos, e a última de sua espécie.", 
"Força, velocidade, agilidade, durabilidade, destreza e um fator de cura avançado",8908,7450, 1);

-- Alterando os campos de nome para ajustar
update tb_personagem set tb_personagem.nome = "Feiticeira Escarlate" where id = 2;

update tb_personagem set tb_personagem.nome = "Ellie" where id = 3;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000
select * from tb_personagem where poder_ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where poder_defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C
select * from tb_personagem where nome like "%C%";

select * from tb_personagem where nome like "%C";

select * from tb_personagem where nome like "C%";

-- Faça um um select com Inner join entre  tabela classe e personagem
select * from tb_classe inner join tb_personagem;

 select tb_classe.nome, tb_personagem.nome, tb_personagem.tipo_poder, tb_personagem.id_categoria
	from tb_classe
	inner join tb_personagem on tb_classe.id = tb_personagem.id_categoria;
    
    -- Faça um select onde traga todos os personagem de uma classe específica
    select tb_personagem.nome as Nome, tb_personagem.tipo_poder as Tipo_Poder from tb_personagem where tipo_poder like "%agilidade%";