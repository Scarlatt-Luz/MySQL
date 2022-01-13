-- seleção da tabela de funcionaries de Gen --
SELECT * FROM db_rh_gen.tb_funcionaries_gen;

-- Inserção dos dados na tabela --
insert into tb_funcionaries_gen (nome, pronome, setor, salario) values ("Nati Ferreira","Ela/Dela", "Desenvolvimento de Software", 7000.00);
insert into tb_funcionaries_gen (nome, pronome, setor, salario) values ("Jose Eduardo","Ele/Dele", "Auxiliar de limpeza", 1200.00);
insert into tb_funcionaries_gen (nome, pronome, setor, salario) values ("Gustavo Cardoso","Elu/Ele", "Administrativo", 3500.00);
insert into tb_funcionaries_gen (nome, pronome, setor, salario) values ("Bruna Oliveira","Ela/Elu", "Tech Lead", 12000.00);

-- Seleção de toda a tabela --
select * from tb_funcionaries_gen;

-- Busca de salários maior que 2 mil --
select * from tb_funcionaries_gen where salario > 2000.00;

-- Busca de salários menor que 2 mil --
select * from tb_funcionaries_gen where salario < 2000.00;

-- Alteração de um salário no id 2 --
update tb_funcionaries_gen set salario = 1500.00 where id = 2;