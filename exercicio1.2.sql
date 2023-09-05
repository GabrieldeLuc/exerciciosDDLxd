--DDL--

create database exercicio_1_2;

use exercicio_1_2 ;

create table cliente 
(
IdCliente int primary key identity,
Nome Varchar(20) Not Null, 
Cpf Char(11) Not Null Unique 

)

create table empresa 
(
IdEmpresa int primary key identity , 
Nome Varchar(20) Not null
)

create table modelo 
(
IdModelo int primary key identity , 
Nome Varchar(20) Not null 

)

create table marca 
(
IdMarca int primary key identity, 
Nome varchar(20) Not null 

)

create table aluguel 

(
IdAluguel Int primary key identity, 
IdVeiculo Int foreign key references cliente(IdCliente) , 
Idcliente Int Foreign key references cliente(IdCliente) ,
Protocolo Char(11) Not Null Unique,
Dataretirada varchar(10) Not null,
Datadevolucao varchar(10) Not null 


) 

create table Veiculo 

( 
IdVeiculo Int primary key identity, 
IdEmpresa int foreign key references empresa(IdEmpresa) , 
IdModelo int foreign key references modelo(IdModelo) , 
IdMarca int foreign key references marca(IdMarca)  ,
Placa varchar(7) Not null Unique ,
Dataderetirada varchar(10) Not null ,
Datadedevolução varchar(10) Not null 

)

select * from marca 
select * from modelo 
select * from  empresa 
select * from cliente
select * from aluguel 
select * from veiculo 

delete from veiculo 

drop table aluguel