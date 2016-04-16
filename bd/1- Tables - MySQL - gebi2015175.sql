DROP DATABASE scrinia;

CREATE DATABASE scrinia;

USE scrinia;

/*SIMPLES*/
CREATE TABLE usuario
(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT, 
	senha VARCHAR(50) NOT NULL, 
	nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
	img VARCHAR(100) NOT NULL
);

CREATE TABLE telefone
(
	ddi INT,
	ddd INT,
	telefone VARCHAR(15) PRIMARY KEY,
    celular VARCHAR(16)
);

CREATE TABLE sexo
(
	idSexo INT PRIMARY KEY AUTO_INCREMENT,
	sexo VARCHAR(25) NOT NULL
);

CREATE TABLE endereco
(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT,
	pais VARCHAR (20) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	logradouro VARCHAR(50) NOT NULL,
    numero VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);

CREATE TABLE editora
(
	idEditora INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE genero
(
	idGenero INT PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(25) NOT NULL
);


/*FIM_SIMPLES*/

/**/

/*FOREIGN KEY*/
CREATE TABLE autor 
(
	idAutor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	idSexo INT NOT NULL,
	FOREIGN KEY (idSexo) REFERENCES sexo (idSexo)
);

CREATE TABLE livro
(
	idLivro INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50) NOT NULL,
	img VARCHAR(100) NOT NULL,
	idAutor INT NOT NULL,
    idGenero INT NOT NULL,
    FOREIGN KEY (idAutor) REFERENCES autor (idAutor),
    FOREIGN KEY (idGenero) REFERENCES genero (idGenero)

);

CREATE TABLE exemplar
(
	idExemplar INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(100) NOT NULL,
    numeroEdicao INT NOT NULL,
	dataPublicacao DATE NOT NULL,
	idLivro INT NOT NULL,
    idEditora INT NOT NULL,
	FOREIGN KEY (idLivro) REFERENCES livro (idLivro),
    FOREIGN KEY (idEditora) REFERENCES editora (idEditora)
);

CREATE TABLE leitor 
(
	idLeitor INT PRIMARY KEY AUTO_INCREMENT,
	cpf VARCHAR(14) NOT NULL,
	nascimento DATE NOT NULL,
	nacionalidade VARCHAR(50) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	idSexo INT NOT NULL,
	idEndereco INT NOT NULL,
    idGenero INT NOT NULL,
    idUsuario INT NOT NULL,
    FOREIGN KEY (telefone) REFERENCES telefone (telefone),
	FOREIGN KEY (idSexo) REFERENCES sexo (idSexo),
	FOREIGN KEY (idEndereco) REFERENCES endereco (idEndereco),
    FOREIGN KEY (idGenero) REFERENCES genero (idGenero),
    FOREIGN KEY (idUsuario) REFERENCES usuario ( idUsuario)
    
);

CREATE TABLE biblioteca 
(
	idBiblioteca INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idEndereco INT NOT NULL,
	FOREIGN KEY (idEndereco) REFERENCES endereco (idEndereco)
);


CREATE TABLE bibliotecario 
(
	idBibliotecario INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL,
	idUsuario INT NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);
/*FIM_FOREIGN_KEY*/

/**/

/*ACOES_FOREIGN_KEY */

CREATE TABLE emprestimo
(
	idEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
	idLeitor INT NOT NULL,
	idExemplar INT NOT NULL,
	dataEmprestimo DATE NOT NULL,
	dataDevolucao DATE NOT NULL,
    comentario VARCHAR (250),
	FOREIGN KEY (idLeitor) REFERENCES leitor (idLeitor),
	FOREIGN KEY (idExemplar) REFERENCES exemplar (idExemplar)
);

CREATE TABLE bibliotecaGuarda
(
	idGuarda INT PRIMARY KEY AUTO_INCREMENT,
	idBiblioteca INT NOT NULL,
	idExemplar INT NOT NULL,
	quantidade INT NOT NULL,
	FOREIGN KEY (idBiblioteca) REFERENCES biblioteca (idBiblioteca),
	FOREIGN KEY (idExemplar) REFERENCES exemplar (idExemplar)
	
);

CREATE TABLE bibliotecarioTrabalha
(
	idTrabalha INT PRIMARY KEY AUTO_INCREMENT,
	idBibliotecario INT NOT NULL,
	idBiblioteca INT NOT NULL,
	dataEntrada DATE NOT NULL,
	FOREIGN KEY (idBibliotecario) REFERENCES bibliotecario (idBibliotecario),
	FOREIGN KEY (idBiblioteca) REFERENCES biblioteca (idBiblioteca)
);

/*FIM_ACOES_FOREIGN_KEY */

/*Inserts*/

insert into usuario (idUsuario, email, nome, senha, img) VALUES (1, 'admin@admin.com', 'admin',sha1('gebi2015175'), "avatar.jpg");
