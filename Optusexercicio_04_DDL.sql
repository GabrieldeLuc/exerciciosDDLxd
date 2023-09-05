create database Exercicio_1_4;

use Exercicio_1_4;

--DDL--

create table Estilo
(
IdEstilo	int primary key identity, 
	Nome	varchar(50)not null
);

create table Artista
(
	IdArtista	int primary key identity,
	Nome	varchar(50)not  null
);

CREATE TABLE Albuns
(
	IdAlbuns	int primary key identity,
	IdEstilo	int foreign key references  Estilo(IdEstilo) not null,
	IdArtista	int foreign key references  Albuns(IdAlbuns)not null,
	Titulo		varchar(50)not null,
	DataLancamento	date not null,
	Localizacao	varchar (70) not null,
	Minutos	VARCHAR(10)not null,
	Vizualizacao bit not null
);

CREATE TABLE TipoDeUsuario
(
	IdTipoDeUsuario int primary key identity, 
	Descricao	varchar(200)not null
);

CREATE TABLE Usuario
(
	IdUsuario	int primary key identity,
	IdTipoDeUsuario int foreign key references  TipoDeUsuario(IdTipoDeUsuario) not null,
	Nome varchar(50),
	Email VARCHAR(70),
	Senha varchar(50)
);