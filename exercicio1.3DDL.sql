create database exercicio_1_3_DDL;

USE  exercicio_1_3_DDL;

--DDL--

create table Clinicas
(
	IdClinica	int primary key identity,
	Nome	varchar(50) not null, 
	Endereco	VARCHAR(50)not null
);

CREATE TABLE Veterinario
(
	IdVeterinario	int primary key identity ,
	IdClinica	int foreign key references  Clinicas(idClinica)not null,
	Nome	varchar(500)NOT NULL,
	CRMV varchar(15) not null
);

CREATE TABLE Tipos
(
	IdTipo	int primary key identity,
	TipoPEt varchar(15) not null
);

CREATE TABLE Racas
(
	IdRaca		int primary key identity,
	IdTipo	  int foreign key references  Tipos(IdTipo)not null,
	NomeRaca	varchar(15)not null
);

CREATE TABLE Dono
(
	IdDono	int primary key identity,
	Nome	varchar(500)not null
);

CREATE TABLE Pets
(
	IdPet	int primary key identity,
	IdDono int foreign key references Dono(IdDono)NOT NULL,
	IdRaca	int foreign key references Racas(IdRaca)NOT NULL,
	Nome	varchar(50)not null,
	DataNascimento date not null,
	Telefone	varchar(11)not null
);

CREATE TABLE Atendimentos
(
	IdAtendimento	int primary key identity,
	IdPet	int foreign key references Pets(IdPet)NOT NULL,
	IdVeterinario int foreign key references Veterinario(IdVeterinario)NOT NULL,
	Servico	varchar(200)not null,
	DataAtendimento	date not null,
	ValorConsulta	smallmoney not null
);