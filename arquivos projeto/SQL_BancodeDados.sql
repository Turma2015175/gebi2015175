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


/* Atualização BD */

INSERT INTO `sexo` (`idSexo`, `genero`) VALUES ('1', 'masculino'), ('2', 'feminino');
ALTER TABLE `autor` ADD `img` VARCHAR(100) NOT NULL AFTER `idSexo`;
ALTER TABLE `autor` ADD `descricao` VARCHAR(250) NOT NULL AFTER `idSexo`;
INSERT INTO `autor` (`nome`, `idAutor`, `idSexo`, `descricao`, `img`) VALUES ('J.R.R. Tolkien', '1', '1', 'J. R. R. Tolkien foi um premiado escritor, professor universitário e filólogo britânico, doutor em Letras e Filologia pela Universidade de Liège e Dublin, em 1954, e autor das obras como O Hobbit, O Senhor dos Anéis e O Silmarillion', ''), ('Agatha Christie', '2', '2', 'Agatha Mary Clarissa Christie foi uma escritora britânica nascida na Inglaterra que atuou como romancista, contista, dramaturga e poetista. Se destacou no subgênero romance policial.', '');
INSERT INTO `autor` (`nome`, `idAutor`, `idSexo`, `descricao`, `img`) VALUES ('Stephen Hawking', '3', '1', 'Stephen William Hawking é um físico teórico e cosmólogo britânico e um dos mais consagrados cientistas da atualidade.', ''), ('Tom Clancy', '4', '1', 'Thomas Leo "Tom" Clancy, Jr. foi um escritor e historiador americano conhecido pelos seus enredos detalhados de espionagem e de ciência militar que ocorrem durante e depois da Guerra Fria.', '');

ALTER TABLE `livros` ADD `descricao` VARCHAR(250) NOT NULL AFTER `idAutor`;
INSERT INTO `livros` (`idlivro`, `nome`, `genero`, `idAutor`, `descricao`) VALUES ('1', 'O Hobbit', 'fantasia', '1', 'The Hobbit é um livro infanto-juvenil publicado originalmente em 21 de setembro de 1937, foi aclamado pela crítica, sendo nomeado à Medalha Carnegie e recebendo um prêmio do jornal norte-americano New York Herald Tribune de melhor ficção juvenil.');
INSERT INTO `livros` (`idlivro`, `nome`, `genero`, `idAutor`, `descricao`) VALUES ('2', 'O Senhor dos Anéis - A Sociedade do Anel ', 'fantasia ', '1', 'O Senhor dos Anéis - A Sociedade do Anel narra o início da história do Um Anel, tendo como principal aspecto a formação de uma Sociedade que deveria levar o Anel para a Montanha da Perdição a fim de destrui-lo.'), ('3', 'O Senhor dos Anéis - As Duas Torres', 'fantasia', '1', 'O Senhor dos Anéis - As Duas Torres Narra a continuação da história desde o rompimento da Sociedade do Anel.'), ('4', 'O Senhor dos Anéis - O Retorno do Rei', NULL, NULL, 'O Senhor dos Anéis - O Retorno do Rei é o terceiro e último volume de O Senhor dos Anéis, de J. R. R. Tolkien, seguindo A Sociedade do Anel e As Duas Torres. ');
ALTER TABLE `exemplar` ADD `datapublicacao` DATETIME NOT NULL AFTER `idEditora`, ADD `numeroEdicao` INT(11) NOT NULL AFTER `datapublicacao`;








