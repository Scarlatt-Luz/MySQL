-- seleção da tabela de estudantes na escola Panoca --
select * from db_escola_panoca.tb_estudantes;

-- Populando dados na tabela tb_estudantes --
insert into tb_estudantes(nome,nota,pronome,turma) values ("João da Silva",04.00,"ele/dele",1);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Sandra Maria Castro",07.87,"ela/dela",2);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Guilherme Ninea",8.69,"ele/dele",2);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Matheus Hurun",07.24,"elu/ela",3);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Janaína Kihos de Oliveira",06.98,"elu/delu",4);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Beatriz Muemein Muegyeur",09.58,"ele/dele",6);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Natália Luhao",05.11,"ele/dele",5);
insert into tb_estudantes(nome,nota,pronome,turma) values ("Stefani Kawuzir Liego",7.99,"elu/ela",5);

-- Busca de estudantes com a nota maior que 07 --
select * from tb_estudantes where nota > 07.00;

-- Busca de estudantes com a nota menor que 07 --
select * from tb_estudantes where nota < 07.00;

-- Atualização de uma nota no id 5 --
update tb_estudantes set nota = 07.00 where id = 5;