use loja;

-- retorna o nome do ator que trabalhou em determinado filme
SELECT filme.titulo, ator.nome_ator as 'ator' FROM filme, ator, filme_has_ator where filme.id_filme = filme_has_ator.id_filme and filme_has_ator.id_ator = ator.id_ator;

-- retorna a categoria de um determinado filme
select filme.titulo,categoria.nome as 'categoria' from filme, categoria, filme_has_categoria where filme.id_filme = filme_has_categoria.id_filme and filme_has_categoria.id_categoria = categoria.id_categoria;

-- retorna o nome do cliente com respectivo endereco
select cliente.nome,endereco.bairro, endereco.rua, endereco.cidade, endereco.numero from cliente,endereco where endereco.id_cliente = cliente.id_cliente;

-- retorna o nome do cliente com alugies reallizados
SELECT nome,titulo,dt_aluguel as 'Data do aluguel',dt_devolucao as 'data da devolução',status from aluguel, cliente, aluguel_has_filme, filme where filme.id_filme = aluguel_has_filme.id_filme and aluguel_has_filme.id_aluguel = aluguel.id_aluguel and aluguel.id_cliente = cliente.id_cliente;

--  retorna o numero da fita com o titulo do filme
select id_Fita AS 'Numero fita',titulo from fita, filme where fita.id_filme = filme.id_filme;

