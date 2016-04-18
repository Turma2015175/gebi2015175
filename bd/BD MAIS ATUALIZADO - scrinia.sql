-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2016 às 01:27
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrinia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `idSexo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `nome`, `descricao`, `idSexo`) VALUES
(1, ' J. K. Rowling', 'Joanne "Jo" Rowling /?ro?l??/, OBE, FRSL (Yate, 31 de julho de 1965), também conhecida como J. K. Ro', 2),
(2, 'Suzanne Collins', 'Suzanne Marie Collins (Hartford, Connecticut, EUA, 10 de agosto de 1962) é uma escritora e roteirist', 2),
(3, 'Veronica Roth', 'Veronica Roth (Cidade de Nova Iorque, 19 de agosto de 1988) é uma escritora estadunidense.\r\n\r\nÉ conh', 2),
(4, 'George Raymond Richard Martin', 'George Raymond Richard Martin (Bayonne, 20 de setembro de 1948), nascido George Raymond Martin e mai', 1),
(5, 'Julie Plec', 'Julie Plec é uma produtora executiva e Roteirista americana, conhecida por seu trabalho nos filmes d', 2),
(6, 'Robert Kirkman', 'Robert Kirkman (Richmond, 30 de novembro de 1978) é um escritor de história em quadrinhos americano,', 1),
(7, 'John Green', 'John Green nasceu em Indianapolis,autor de livros como: " Quem É Você, Alasca? - O Teorema Katherine', 1),
(8, 'Stephen King', 'Stephen Edwin King (Portland, 21 de setembro de 1947) é um escritor americano, reconhecido como um d', 1),
(9, 'John Boyne', 'Boyne lançou recentemente seu sétimo romance - The House of Special Purpose, ou O Palácio de Inverno', 1),
(10, 'Raphael Draccon', 'Raphael Draccon, pseudônimo de Rafael Albuquerque Pereira(Rio de Janeiro, 15 de junho de 1981),é um ', 1),
(11, 'E. L. James', 'Erika Leonard James (7 de março de 1963), melhor conhecida pelo pseudônimo E.L. James, é uma escrito', 2),
(12, 'Kiera Cass', 'Kiera Cass (Carolina do Sul, EUA, 1981) é autora da série Best seller internacional The Selection (A', 2),
(13, 'J. R. R. Tolkien', 'Sir John Ronald Reuel Tolkien, CBF, FRSL, conhecido internacionalmente por J. R. R. Tolkien (Bloemfo', 1),
(14, 'Melo, Ricardo', 'Sei lá .. o cara manja ...', 1),
(15, 'Duhigg, Charles', 'O nome do cara é esquisito...', 1),
(16, 'Oliveira, Natanael', 'tem nome de velho', 1),
(17, 'Berenice Carpigiani', 'autora de psicologia', 2),
(18, 'Lya Wyler', 'autora de ficção', 2),
(19, 'Jojo Moyes', 'autor de romance', 1),
(20, 'Thomas Ryan', 'autor de ciências exatas', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `idBiblioteca` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idEndereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`idBiblioteca`, `nome`, `idEndereco`) VALUES
(3, 'Nacional', 9),
(4, 'Centro de Tecnologia UFRJ', 10),
(5, 'Centro de Tecnologia UFRJ', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecaguarda`
--

CREATE TABLE `bibliotecaguarda` (
  `idGuarda` int(11) NOT NULL,
  `idBiblioteca` int(11) NOT NULL,
  `idExemplar` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `idBibliotecario` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecariotrabalha`
--

CREATE TABLE `bibliotecariotrabalha` (
  `idTrabalha` int(11) NOT NULL,
  `idBibliotecario` int(11) NOT NULL,
  `idBiblioteca` int(11) NOT NULL,
  `dataEntrada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `idEditora` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`idEditora`, `nome`) VALUES
(1, 'Editora Schoba'),
(2, 'Editora Livre Expressão'),
(3, 'Editora Arqueiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `idEmprestimo` int(11) NOT NULL,
  `idLeitor` int(11) NOT NULL,
  `idExemplar` int(11) NOT NULL,
  `dataEmprestimo` date NOT NULL,
  `dataDevolucao` date NOT NULL,
  `comentario` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `pais`, `cep`, `logradouro`, `numero`, `bairro`, `estado`) VALUES
(1, 'Brasil', '58410-210', 'Rua José de Brito Lira', '11', 'Catolé', 'São Paulo'),
(2, 'Brasil', '64078-730', 'Rua Manoel Ildefonso Lima', '22', 'Parque Ideal', 'Piauí'),
(3, 'Brasil', '95112-122', 'Rua Coronel Alorino Machado de Lucena', '33', 'Cidade Nova', 'Rio Grande do Sul'),
(4, 'Brasil', '20550-010', 'RUa São Francisco Xavier,', '417', 'Maracanã', 'Rio de Janeiro'),
(5, 'Brasil', '58410-210', 'Rua José de Brito Lira', '11', 'Catolé', 'São Paulo'),
(6, 'Brasil', '64078-730', 'Rua Manoel Ildefonso Lima', '22', 'Parque Ideal', 'Piauí'),
(7, 'Brasil', '95112-122', 'Rua Coronel Alorino Machado de Lucena', '33', 'Cidade Nova', 'Rio Grande do Sul'),
(8, 'Brasil', '20550-010', 'RUa São Francisco Xavier,', '417', 'Maracanã', 'Rio de Janeiro'),
(9, 'Brasil', '20040-009', 'Av. Rio Branco', '219', 'Centro', 'Rio de Janeiro'),
(10, 'Brasil', '21941-909', 'Av. Athos da Silveira Ramos', '149', 'Ilha do Fundão', 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exemplar`
--

CREATE TABLE `exemplar` (
  `idExemplar` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `numeroEdicao` int(11) NOT NULL,
  `dataPublicacao` date NOT NULL,
  `idLivro` int(11) NOT NULL,
  `idEditora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exemplar`
--

INSERT INTO `exemplar` (`idExemplar`, `img`, `numeroEdicao`, `dataPublicacao`, `idLivro`, `idEditora`) VALUES
(3, 'capa.jpg', 3, '2009-01-01', 6, 1),
(4, 'capa.jpg', 1, '2000-01-25', 8, 2),
(5, 'capa.jpg', 1, '2015-01-15', 6, 3),
(6, 'capa.jpg', 1, '2009-10-07', 6, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `genero` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`idGenero`, `genero`) VALUES
(1, 'Biografias e Memórias'),
(2, 'Contos'),
(3, 'Cordel'),
(4, 'Crônica'),
(5, 'Ensaios'),
(6, 'Erótico'),
(7, 'Ficção científica'),
(8, 'Novela'),
(9, 'Poesia'),
(10, 'Policial'),
(11, 'Romance'),
(12, 'Romance autobiográfico'),
(13, 'Romance histórico'),
(14, 'Teatro'),
(15, 'Terror'),
(16, 'Tragédia'),
(17, 'Baseado em fatos reais'),
(18, 'Livro-reportagem'),
(19, 'Quadrinhos'),
(20, 'ficção'),
(21, 'Autoajuda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitor`
--

CREATE TABLE `leitor` (
  `idLeitor` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nascimento` date NOT NULL,
  `nacionalidade` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `idSexo` int(11) NOT NULL,
  `idEndereco` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `leitor`
--

INSERT INTO `leitor` (`idLeitor`, `cpf`, `nascimento`, `nacionalidade`, `telefone`, `idSexo`, `idEndereco`, `idGenero`, `idUsuario`) VALUES
(1, '123.456.789-12', '1960-01-22', 'brasileira', '2081-4955', 1, 1, 11, 2),
(2, '997.415.789-11', '1999-10-15', 'brasileira', '2288-3901', 1, 2, 17, 3),
(3, '958.222.879-15', '2000-08-06', 'brasileira', '5754-1607', 2, 3, 8, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `idLivro` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`idLivro`, `titulo`, `img`, `idAutor`, `idGenero`) VALUES
(6, 'Harry Potter e a Pedra Filosofal ', '01.jpg', 1, 20),
(7, 'Harry Potter e a Câmara Secreta', '02.jpg', 1, 20),
(8, 'As Leis Invisíveis do Dinheiro', 'livro1destaque.jpg', 14, 21),
(9, 'O Poder do Hábito - Por Que Fazemos o Que Fazemos ', 'livro2destaque.jpg', 15, 21),
(10, 'Seja o Empresário da Sua Idéia', 'livro2maislidos.jpg', 16, 21),
(11, 'Das Raízes aos Movimentos Contemporâneos', 'capa.jpg', 1, 17),
(12, 'Depois de Você', 'capa.jpg', 1, 11),
(13, 'Estatística Moderna para Engenharia', 'capa.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `idSexo` int(11) NOT NULL,
  `sexo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`idSexo`, `sexo`) VALUES
(1, 'masculino'),
(2, 'feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `ddi` int(11) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `celular` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`ddi`, `ddd`, `telefone`, `celular`) VALUES
(NULL, 22, '2081-4955', '99360-0916'),
(NULL, 21, '2288-3901', '99913-5608'),
(NULL, 23, '5754-1607', '99748-1428');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `senha`, `nome`, `email`, `img`) VALUES
(1, '924b0600518893846ef687823bacf5a960d3b651', 'admin', 'admin@admin.com', 'avatar.png'),
(2, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Diego Santos', 'diegosantos@user.com', 'avatar.jpg'),
(3, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Danilo Melo', 'danilomelo@user.com', 'avatar.jpg'),
(4, '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Bruna Almeida', 'brunaalmeida@user.com', 'avatar.jpg'),
(88, '2d943d2cc29a9829b155dbffabcaeaf3cd7cee23', 'lario dos Santos Diniz', 'lariodiniz@gmail.com', '099555d5ed6a7d7977c851fea7ffea47.jpeg'),
(89, 'bdfa0acc400939819b9afc23bf462d66e57b0500', 'teste teeste teste', 'teste@teste.com', 'avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`),
  ADD KEY `idSexo` (`idSexo`);

--
-- Indexes for table `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`idBiblioteca`),
  ADD KEY `idEndereco` (`idEndereco`);

--
-- Indexes for table `bibliotecaguarda`
--
ALTER TABLE `bibliotecaguarda`
  ADD PRIMARY KEY (`idGuarda`),
  ADD KEY `idBiblioteca` (`idBiblioteca`),
  ADD KEY `idExemplar` (`idExemplar`);

--
-- Indexes for table `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD PRIMARY KEY (`idBibliotecario`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `bibliotecariotrabalha`
--
ALTER TABLE `bibliotecariotrabalha`
  ADD PRIMARY KEY (`idTrabalha`),
  ADD KEY `idBibliotecario` (`idBibliotecario`),
  ADD KEY `idBiblioteca` (`idBiblioteca`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`idEditora`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`idEmprestimo`),
  ADD KEY `idLeitor` (`idLeitor`),
  ADD KEY `idExemplar` (`idExemplar`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Indexes for table `exemplar`
--
ALTER TABLE `exemplar`
  ADD PRIMARY KEY (`idExemplar`),
  ADD KEY `idLivro` (`idLivro`),
  ADD KEY `idEditora` (`idEditora`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indexes for table `leitor`
--
ALTER TABLE `leitor`
  ADD PRIMARY KEY (`idLeitor`),
  ADD KEY `telefone` (`telefone`),
  ADD KEY `idSexo` (`idSexo`),
  ADD KEY `idEndereco` (`idEndereco`),
  ADD KEY `idGenero` (`idGenero`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idLivro`),
  ADD KEY `idAutor` (`idAutor`),
  ADD KEY `idGenero` (`idGenero`);

--
-- Indexes for table `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`idSexo`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`telefone`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `idBiblioteca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bibliotecaguarda`
--
ALTER TABLE `bibliotecaguarda`
  MODIFY `idGuarda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bibliotecariotrabalha`
--
ALTER TABLE `bibliotecariotrabalha`
  MODIFY `idTrabalha` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `idEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `idEmprestimo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exemplar`
--
ALTER TABLE `exemplar`
  MODIFY `idExemplar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `leitor`
--
ALTER TABLE `leitor`
  MODIFY `idLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sexo`
--
ALTER TABLE `sexo`
  MODIFY `idSexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`idSexo`);

--
-- Limitadores para a tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`);

--
-- Limitadores para a tabela `bibliotecaguarda`
--
ALTER TABLE `bibliotecaguarda`
  ADD CONSTRAINT `bibliotecaguarda_ibfk_1` FOREIGN KEY (`idBiblioteca`) REFERENCES `biblioteca` (`idBiblioteca`),
  ADD CONSTRAINT `bibliotecaguarda_ibfk_2` FOREIGN KEY (`idExemplar`) REFERENCES `exemplar` (`idExemplar`);

--
-- Limitadores para a tabela `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD CONSTRAINT `bibliotecario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `bibliotecariotrabalha`
--
ALTER TABLE `bibliotecariotrabalha`
  ADD CONSTRAINT `bibliotecariotrabalha_ibfk_1` FOREIGN KEY (`idBibliotecario`) REFERENCES `bibliotecario` (`idBibliotecario`),
  ADD CONSTRAINT `bibliotecariotrabalha_ibfk_2` FOREIGN KEY (`idBiblioteca`) REFERENCES `biblioteca` (`idBiblioteca`);

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`idLeitor`) REFERENCES `leitor` (`idLeitor`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`idExemplar`) REFERENCES `exemplar` (`idExemplar`);

--
-- Limitadores para a tabela `exemplar`
--
ALTER TABLE `exemplar`
  ADD CONSTRAINT `exemplar_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`idLivro`),
  ADD CONSTRAINT `exemplar_ibfk_2` FOREIGN KEY (`idEditora`) REFERENCES `editora` (`idEditora`);

--
-- Limitadores para a tabela `leitor`
--
ALTER TABLE `leitor`
  ADD CONSTRAINT `leitor_ibfk_1` FOREIGN KEY (`telefone`) REFERENCES `telefone` (`telefone`),
  ADD CONSTRAINT `leitor_ibfk_2` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`idSexo`),
  ADD CONSTRAINT `leitor_ibfk_3` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  ADD CONSTRAINT `leitor_ibfk_4` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`),
  ADD CONSTRAINT `leitor_ibfk_5` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
