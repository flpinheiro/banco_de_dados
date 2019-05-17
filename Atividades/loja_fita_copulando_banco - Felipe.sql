-- seleciona o banco de dados a ser usado
use loja;

-- acrecenta filme
INSERT INTO filme (titulo) VALUES ('Titanic');
INSERT INTO filme (titulo) VALUES ('Batman');
INSERT INTO filme (titulo) VALUES ('Capitao america');
INSERT INTO filme (titulo) VALUES ('Dredd');
INSERT INTO filme (titulo) VALUES ('Rambo');

-- acrescenta cliente
INSERT INTO cliente (nome, telefone) VALUES ('Felipe',32631773);
INSERT INTO cliente (nome, telefone) VALUES ('Catelli',4378903);
INSERT INTO cliente (nome, telefone) VALUES ('Oliveira',3894053);
INSERT INTO cliente (nome, telefone) VALUES ('Mota',389402-1);
INSERT INTO cliente (nome, telefone) VALUES ('Pinheiro',343902);

-- acrecenta endereco
INSERT INTO endereco (bairro, rua, numero, complemento, cidade, id_cliente) 
VALUES ('taguatinga norte','qnb 3', 25, null, 'brasilia', 1);
INSERT INTO endereco (bairro, rua, numero, complemento, cidade, id_cliente) 
VALUES ('jardim botanico','avenida do sol', 4, 'condominio ouro vermelho 1', 'brasilia',2);
INSERT INTO endereco (bairro, rua, numero, complemento, cidade, id_cliente) 
VALUES ('aguas claras','avenida das pitangueiras', 20, 'condominiio lugar feliz apt. 201', 'brasilia',3);
INSERT INTO endereco (bairro, rua, numero, complemento, cidade, id_cliente) 
VALUES ('guara','qi 23', 2, null, 'brasilia',4);
INSERT INTO endereco (bairro, rua, numero, complemento, cidade, id_cliente) 
VALUES ('cabo verde','zona de guerra', 69, 'na esquina de onde judas perdeu as botas', 'longe',1);

-- acresceta categoria
INSERT INTO categoria (nome) VALUES ('drama');
INSERT INTO categoria (nome) VALUES ('comedia');
INSERT INTO categoria (nome) VALUES ('acao');
INSERT INTO categoria (nome) VALUES ('suspense');
INSERT INTO categoria (nome) VALUES ('terror');

-- acrecenta ator
INSERT INTO ator (nome_ator) VALUES ('nicolas cage');
INSERT INTO ator (nome_ator) VALUES ('nicole kidman');
INSERT INTO ator (nome_ator) VALUES ('jim carrey');
INSERT INTO ator (nome_ator) VALUES ('val kilmer');
INSERT INTO ator (nome_ator) VALUES ('julie andrews');
INSERT INTO ator (nome_ator) VALUES ('leonardo de capri');

-- acrecenta fita
INSERT INTO fita (id_filme) VALUES (1);
INSERT INTO fita (id_filme) VALUES (2);
INSERT INTO fita (id_filme) VALUES (3);
INSERT INTO fita (id_filme) VALUES (4);
INSERT INTO fita (id_filme) VALUES (5);

-- acrecenta aluguel
insert into aluguel (dt_aluguel,dt_devolucao,status,id_cliente) values ('2004-12-12', '2004-12-25',1,1);
insert into aluguel (dt_aluguel,dt_devolucao,status,id_cliente) values ('2005-05-02', '2005-05-12',1,5);
insert into aluguel (dt_aluguel,dt_devolucao,status,id_cliente) values ('2008-03-12', '2004-03-25',1,6);
insert into aluguel (dt_aluguel,dt_devolucao,status,id_cliente) values ('2010-11-15', '2010-11-29',1,3);
insert into aluguel (dt_aluguel,dt_devolucao,status,id_cliente) values ('2018-12-20', '2019-01-08',1,7);

-- acrecenta filmes no aluguel
insert into aluguel_has_filme (id_aluguel, id_filme) values (2,3);
insert into aluguel_has_filme (id_aluguel, id_filme) values (2,4);
insert into aluguel_has_filme (id_aluguel, id_filme) values (2,5);
insert into aluguel_has_filme (id_aluguel, id_filme) values (1,1);
insert into aluguel_has_filme (id_aluguel, id_filme) values (4,5);

-- acrescenta -- ator ao filme
insert into filme_has_ator (id_filme, id_ator) VALUEs (1,1);
insert into filme_has_ator (id_filme, id_ator) VALUEs (1,2);
insert into filme_has_ator (id_filme, id_ator) VALUEs (1,3);
insert into filme_has_ator (id_filme, id_ator) VALUEs (2,5);
insert into filme_has_ator (id_filme, id_ator) VALUEs (5,5);

-- acrecenta categoria ao filme
insert into filme_has_categoria (id_filme, id_categoria) VALUEs (1,1);
insert into filme_has_categoria (id_filme, id_categoria) VALUEs (2,2);
insert into filme_has_categoria (id_filme, id_categoria) VALUEs (3,3);
insert into filme_has_categoria (id_filme, id_categoria) VALUEs (4,4);
insert into filme_has_categoria (id_filme, id_categoria) VALUEs (5,5);
