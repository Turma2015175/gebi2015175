DROP DATABASE gebi2015175;

CREATE DATABASE gebi2015175;

USE gebi2015175;

/*SIMPLES*/
CREATE TABLE usuario
(
	idUsuario INT PRIMARY KEY, 
	senha VARCHAR(20) NOT NULL, 
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	img VARCHAR(100) NOT NULL
);

CREATE TABLE telefone
(
	ddi INT NOT NULL,
	ddd INT NOT NULL,
	telefone VARCHAR(15) PRIMARY KEY,
	tipo VARCHAR (20) NOT NULL
);

CREATE TABLE endereco
(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR (20) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	logradouro VARCHAR(50) NOT NULL,
	complemento VARCHAR(50) NOT NULL	
);

CREATE TABLE sexo
(
	idSexo INT PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(20) NOT NULL
);

CREATE TABLE editora
(
	idEditora INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
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
	nome VARCHAR(50) NOT NULL,
	genero VARCHAR(50) NOT NULL,
	img VARCHAR(100) NOT NULL,
	idAutor INT NOT NULL,
	FOREIGN KEY (idAutor) REFERENCES autor (idAutor)
);

CREATE TABLE exemplar
(
	img VARCHAR(100) NOT NULL,
	idExemplar INT PRIMARY KEY AUTO_INCREMENT,
	idLivro INT NOT NULL,
	FOREIGN KEY (idLivro) REFERENCES livro (idLivro)
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
	FOREIGN KEY (telefone) REFERENCES telefone (telefone),
	FOREIGN KEY (idSexo) REFERENCES sexo (idSexo),
	FOREIGN KEY (idEndereco) REFERENCES endereco (idEndereco)
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
	idUsuario INT NOT NULL,
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
);
/*FIM_FOREIGN_KEY*/

/**/

/*ACOES_FOREIGN_KEY */
CREATE TABLE publicacao
(
	idPublica INT PRIMARY KEY AUTO_INCREMENT,
	numeroEdicao INT NOT NULL,
	dataPublicacao DATE NOT NULL,
	idExemplar INT NOT NULL,
	idEditora INT NOT NULL,
	FOREIGN KEY (idExemplar) REFERENCES exemplar (idExemplar),
	FOREIGN KEY (idEditora) REFERENCES editora (idEditora)
);

CREATE TABLE emprestimo
(
	idEmprestimo INT PRIMARY KEY AUTO_INCREMENT,
	idLeitor INT NOT NULL,
	idExemplar INT NOT NULL,
	dataEmprestimo DATE NOT NULL,
	dataDevolucao DATE NOT NULL,
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
	FOREIGN KEY (idBibliotecario) REFERENCES bibliotecario 

(idBibliotecario),
	FOREIGN KEY (idBiblioteca) REFERENCES biblioteca (idBiblioteca)
);

/*FIM_ACOES_FOREIGN_KEY */