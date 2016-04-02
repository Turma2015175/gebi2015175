/*CREATE database scrinia*/

CREATE TABLE usuarios (
idUsuario INTEGER PRIMARY KEY,
email varchar(64),
senha varchar(64),
nome varchar(64)
);

CREATE TABLE leitor (
ddi INTEGER,
ddd INTEGER,
numero INTEGER,
tipo varchar(64),
idLeitor INTEGER PRIMARY KEY,
cpf varchar(14),
nascimento datetime,
nascionalidade varchar(64),
idEndereco INTEGER,
idSexo INTEGER
);

CREATE TABLE bibliotecario (
idBibliotecario INTEGER PRIMARY KEY
);

CREATE TABLE bibliotecas (
idBiblioteca INTEGER PRIMARY KEY,
nome varchar(64),
idEndereco INTEGER
);

CREATE TABLE livros (
idlivro INTEGER PRIMARY KEY,
nome varchar(64),
genero varchar(64),
idAutor INTEGER
);

CREATE TABLE exemplar (
idIExemplar INTEGER PRIMARY KEY,
idBiblioteca INTEGER,
idlivro INTEGER,
idEditora INTEGER,
FOREIGN KEY(idBiblioteca) REFERENCES bibliotecas (idBiblioteca),
FOREIGN KEY(idlivro) REFERENCES livros (idlivro)
);

CREATE TABLE endereco (
idEndereco INTEGER PRIMARY KEY,
logradouro varchar(64),
tipo varchar(64),
complemento varchar(64),
cep varchar(9)
);

CREATE TABLE editoras (
idEditora INTEGER PRIMARY KEY,
nome varchar(64),
datapublicacao DATETIME,
numeroEdicao INTEGER
);

CREATE TABLE autor (
nome varchar(64),
idAutor INTEGER PRIMARY KEY,
idSexo INTEGER
);

CREATE TABLE sexo (
idSexo INTEGER PRIMARY KEY,
genero varchar(64)
);

CREATE TABLE pertence (
idLeitor INTEGER,
idUsuario INTEGER,
idBibliotecario INTEGER,
PRIMARY KEY(idLeitor,idUsuario,idBibliotecario)
);

CREATE TABLE trabalha (
idBiblioteca INTEGER,
idBibliotecario INTEGER,
FOREIGN KEY(idBiblioteca) REFERENCES bibliotecas (idBiblioteca),
FOREIGN KEY(idBibliotecario) REFERENCES bibliotecario (idBibliotecario)
);

CREATE TABLE emprestiomo (
dataemprestimo DATETIME,
datadevolucao DATETIME,
idLeitor INTEGER,
idIExemplar INTEGER,
FOREIGN KEY(idLeitor) REFERENCES leitor (idLeitor),
FOREIGN KEY(idIExemplar) REFERENCES exemplar (idIExemplar)
);

ALTER TABLE leitor ADD FOREIGN KEY(idEndereco) REFERENCES endereco (idEndereco);
ALTER TABLE leitor ADD FOREIGN KEY(idSexo) REFERENCES sexo (idSexo);
ALTER TABLE bibliotecas ADD FOREIGN KEY(idEndereco) REFERENCES endereco (idEndereco);
ALTER TABLE livros ADD FOREIGN KEY(idAutor) REFERENCES autor (idAutor);
ALTER TABLE exemplar ADD FOREIGN KEY(idEditora) REFERENCES editoras (idEditora);
ALTER TABLE autor ADD FOREIGN KEY(idSexo) REFERENCES sexo (idSexo);


insert into usuarios (idUsuario, email, nome, senha) VALUES (1, 'admin@admin.com', 'admin',sha1('gebi2015175'))