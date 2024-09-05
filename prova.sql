CREATE DATABASE 22C;
USE 22C;
-- 01--
CREATE TABLE clientes (
	id_cliente varchar(1) primary key,
    Nome varchar(255),
    email varchar(255),
    telefone varchar(255)
);

CREATE TABLE pedidos (
	id_pedidos varchar(1) primary key,
    id_cliente varchar(1),
    Data_pedido varchar(255),
    total varchar(255)
);

insert into clientes (id_cliente, Nome,  email, telefone)
values ('1' ,'Alice Souza', 'alice.souza@example.com', '11999998888'),
('2' ,'Bruno Lima', 'bruno.lima@example.com', '11988887777'),
('3' ,'Carla Santos', 'carla.santos@example.com', '11977776666'),
('4' ,'Daniela Oliveira', 'daniela.oliveira@example.com', '119666665555'),
('5' ,'Eduardo Pereira', 'Eduardo.Pereira@example.com', '119555554444');

insert into pedidos (id_Pedido, id_cliente,  Data_pedido, total)
values ('1', '1', '2024-08-01', '250.00'),
('2', '2', '2024-08-03', '150.00'),
('3', '3', '2024-08-05', '250,00'),
('4', '4', '2024-08-07', '250,00'),
('5', '5', '2024-08-09', '250,00');

-- Q1 --
select Nome 
from clientes
left join pedidos 
on clientes.nome=pedidos.total;

-- Q3 --

select email 
from clientes
left join pedidos 
on clientes.email=pedidos.Data_pedido
