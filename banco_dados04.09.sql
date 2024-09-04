-- criar base de dados
create database lojas;

-- utilizar a base de dados
use lojas;

-- criar tabela
create table pedidos_compra (
id int not null auto_increment primary key,
data_pedido date not null,
cliente_id int not null,
cliente varchar(255) not null,
telefone varchar (15),
endereco varchar(100),
produto_id int not null,
produto varchar (100) not null,
categoria varchar(45),
quantidade int not null,
preco_unitario decimal(15,2) not null,
desconto decimal(15,2) default 0,
total decimal(15,2) not null,
vendedor_id int,
vendedor varchar(255),
forma_pagamento varchar(50) not null,
status_pedido varchar(50) not null
);

-- select coluna1, coluna2, coluna3 .... from nome_tabela
select id, data_pedido, cliente_id, cliente,telefone, endereco,
produto_id, produto, categoria, quantidade, preco_unitario,desconto,
total, vendedor_id, vendedor, forma_pagamento, status_pedido from pedidos_compra;

/* insert into nome_tabela (coluna1, coluna2, coluna3...)
values (valor1, valor2, valor3 ...)
*/
insert into pedidos_compra (data_pedido, cliente_id, cliente,
endereco, telefone, produto_id, produto, categoria, quantidade,
preco_unitario, desconto, total,vendedor_id, vendedor,
forma_pagamento, status_pedido) values ('2024-08-20',1,
'maria silva',' rua a 123','(11)99765-4321', 101,'produto a',
'eletronico', 2, 50.00, 5, 95.00, 201,'ana','cartao de credito','enviado'); 

insert into pedidos_compra (data_pedido, cliente_id, cliente,
endereco, telefone, produto_id, produto, categoria, quantidade,
preco_unitario, desconto, total,vendedor, vendedor_id,
forma_pagamento, status_pedido) values ('2024-04-21', 2,'joao santos','av. b, 456, rio de janeiro',
'(21) 99876-5432',102,' produto b','moveis',1,150.00, 10.00, 140.00, 'bruno lima', 202, 'boleto', 'processando');

insert into pedidos_compra (data_pedido, cliente_id, cliente,
endereco, telefone, produto_id, produto, categoria, quantidade,
preco_unitario, desconto, total,vendedor, vendedor_id,
forma_pagamento, status_pedido) values ('2024-08-22',1, 'maria silva', 'rua a, 123, sao paulo',
'(11) 98765-4321', 103, 'produto c', 'livros', 3, 30.00,
0.00, 90.00, 'ana souza', 201, 'cartao de credito','entregue');

insert into pedidos_compra (data_pedido, cliente_id, cliente,
endereco, telefone, produto_id, produto, categoria, quantidade,
preco_unitario, desconto, total,vendedor, vendedor_id,
forma_pagamento, status_pedido) values ('2024-08-23',3,'carlos pereira','rua c, 789,belo horizonte', '(31) 98765-6789',101,'produto a', 'eletronicos',1,50.00, 5.00,
 45.00,'carla mendes', 203,'dinheiro','cancelado');
 
 insert into pedidos_compra (data_pedido, cliente_id, cliente,
endereco, telefone, produto_id, produto, categoria, quantidade,
preco_unitario, desconto, total,vendedor, vendedor_id,
forma_pagamento, status_pedido) values ('2024-08-24',2,'joao santos', 'av.b, 456, rio de janeiro','(21) 99876-5432',104, 'produto d', 'eletrodomestico',2,80.00,
8.00,152.00,'bruno lima',202, 'cartao de debito','enviado');

-- selecionar tudo
select * from pedidos_compra;

-- selecionar os pedidos do cliente maria silva
select * from pedidos_compra where cliente = 'maria silva';

-- selecionar os pedidos com quantidade maior que 1
select * from pedidos_compra where quantidade > 1;

select * from pedidos_compra where cliente = 'joao santos'
and status_pedido = 'enviado';

select * from pedidos_compra where id = 5;

/*
update nome_tabela
set coluna1 = valor1, coluna2 = valor2 ...
where condicao
*/
update pedidos_compra
set status_pedido = 'entregue' where id = 1;
select * from pedidos_compra where cliente = 'maria silva';
update pedidos_compra 
set desconto = 10, telefone ='(11)9999-1234' where cliente = 'maria silva';


