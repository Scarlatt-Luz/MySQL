-- seleção da tabela de produtos no e-Commerce --
SELECT * FROM db_e_commerce.tb_produtos;

-- Populando dados na tabela tb_produtos --
insert into tb_produtos(nome,quantidade,preco,peso) values ("Tênis Adidas",300,99.99,0.20);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Tênis Nike",299,129.99,01.20);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Óculos Carmim",10,549.99,0.81);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Celular iPhone 12",5,7000.00,0.99);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Tênis Puma",599,200.00,1.20);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Papel higiênico",999,26.98,01.32);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Álcool Giovanna Baby",58,5.99,0.53);
insert into tb_produtos(nome,quantidade,preco,peso) values ("Caneta Bic",67,1.02,0.15);

-- Busca de produtos com preço maior que 500 reais --
select * from tb_produtos where preco > 500.00;

-- Busca de produtos com preço menor que 500 reais --
select * from tb_produtos where preco < 500.00;

-- Atualização de um nome no produto com id 8 --
update tb_produtos set nome = "Papel Higiênico Neve" where id = 8;