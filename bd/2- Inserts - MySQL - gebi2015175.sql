insert into sexo VALUES (null,'Masculino');
insert into sexo VALUES (null, 'Feminino');


insert into usuario VALUES (null, sha1('123456'), 'Diego Santos', 'diegosantos@user.com', "avatar.jpg");
insert into usuario VALUES (null, sha1('123456'), 'Danilo Melo', 'danilomelo@user.com', "avatar.jpg");
insert into usuario VALUES (null, sha1('123456'), 'Bruna Almeida', 'brunaalmeida@user.com', "avatar.jpg");

insert into telefone VALUES (null, '021', '2288-3901', '99913-5608');
insert into telefone VALUES (null, '022', '2081-4955', '99360-0916');
insert into telefone VALUES (null, '023', '5754-1607', '99748-1428');


insert into endereco VALUES (null, 'Brasil', '58410-210', 'Rua José de Brito Lira', '11', 'Catolé','São Paulo');
insert into endereco VALUES (null, 'Brasil', '64078-730', 'Rua Manoel Ildefonso Lima', '22', 'Parque Ideal','Piauí');
insert into endereco VALUES (null, 'Brasil', '95112-122', 'Rua Coronel Alorino Machado de Lucena', '33', 'Cidade Nova','Rio Grande do Sul');
insert into endereco VALUES (null, 'Brasil', '20550-010', 'RUa São Francisco Xavier,','417','Maracanã', 'Rio de Janeiro'); 
INSERT INTO endereco  VALUES
(null, 'Brasil','20040-009', 'Av. Rio Branco', '219', 'Centro', 'Rio de Janeiro'),
(null, 'Brasil','21941-909', 'Av. Athos da Silveira Ramos', '149', 'Ilha do Fundão', 'Rio de Janeiro');


insert into editora VALUES (null, 'Editora Schoba');
insert into editora VALUES (null, 'Editora Livre Expressão');
insert into editora VALUES (null, 'Editora Arqueiro');

insert into genero VALUES (null,'Biografias e Memórias'),(null,'Contos'),(null,'Cordel'),(null,'Crônica'),(null,'Ensaios'),(null,'Erótico'),(null,'Ficção científica'),(null,'Novela'),(null,'Poesia'),(null,'Policial'),(null,'Romance'),(null,'Romance autobiográfico'),(null,'Romance histórico'),(null,'Teatro'),(null,'Terror'),(null,'Tragédia'),(null,'Baseado em fatos reais'),(null,'Livro-reportagem'),(null,'Quadrinhos');


INSERT INTO `autor`  VALUES
(null, ' J. K. Rowling', 'Joanne "Jo" Rowling /?ro?l??/, OBE, FRSL (Yate, 31 de julho de 1965), também conhecida como J. K. Rowling nome com o qual assina as suas obras, ou pelo seu nome de casada, Joanne Murray, é uma escritora britânica de ficção, autora dos sete livros da famosa e premiada série Harry Potter', 2),
(null, 'Suzanne Collins', 'Suzanne Marie Collins (Hartford, Connecticut, EUA, 10 de agosto de 1962) é uma escritora e roteirista de ficção científica e literatura infantojuvenil americana, conhecida pela trilogia The Hunger Games que virou filme sob título homónimo em 2012, com a continuação Catching Fire lançada em novembro de 2013 e ainda Mockingjay (Parte 1) lançada em novembro de 2014.', 2),
(null, 'Veronica Roth', 'Veronica Roth (Cidade de Nova Iorque, 19 de agosto de 1988) é uma escritora estadunidense.\r\n\r\nÉ conhecida mundialmente por seus livros da aclamada saga Divergente. Os direitos cinematográficos da trilogia Divergente foram vendidos em abril de 2012, e a adaptação do primeiro livro chegou aos cinemas em 21 de março de 2014. O segundo filme, baseado em Insurgente, foi lançado no dia 19 de março de 2015 nos cinemas brasileiros.', 2),
(null, 'George Raymond Richard Martin', 'George Raymond Richard Martin (Bayonne, 20 de setembro de 1948), nascido George Raymond Martin e mais conhecido como George R. R. Martin ou simplesmente GRRM, é um roteirista e escritor de ficção científica, terror e fantasia estado-unidense. É mais conhecido por escrever a série de livros de fantasia épica As Crônicas de Gelo e Fogo. Ele foi declarado como uma das 100 pessoas mais influentes do mundo em 2011 pela revista TIME.', 1),
(null, 'Julie Plec', 'Julie Plec é uma produtora executiva e Roteirista americana, conhecida por seu trabalho nos filmes da franquia Pânico e do seriado Kyle XY. Ela co-criou a série de televisão The CW The Vampire Diaries com Kevin Williamson.', 2),
(null, 'Robert Kirkman', 'Robert Kirkman (Richmond, 30 de novembro de 1978) é um escritor de história em quadrinhos americano, conhecido por seus trabalhos para os quadrinhos The Walking Dead e Invencível, ambos para a Skybound e a Image Comics, da qual é um dos cinco sócios, sendo o único entre eles que não é co-fundador da empresa.', 1),
(null, 'John Green', 'John Green nasceu em Indianapolis,autor de livros como: " Quem É Você, Alasca? - O Teorema Katherine - Deixe a Neve Cair - Cidades de Papel - Will e Will, Um nome, Um Destino - A Culpa É das Estrelas " , ganhando o premio Michael L. Printz Award\r\n2006 pelo livro "Quem é você,Alasca?"', 1),
(null, 'Stephen King', 'Stephen Edwin King (Portland, 21 de setembro de 1947) é um escritor americano, reconhecido como um dos mais notáveis escritores de contos de horror fantástico e ficção de sua geração. Os seus livros venderam mais de 350 milhões de cópias,[1] com publicações em mais de 40 países. Muitas de suas obras foram adaptadas para o cinema. É o nono autor mais traduzido no mundo', 1),
(null, 'John Boyne', 'Boyne lançou recentemente seu sétimo romance - The House of Special Purpose, ou O Palácio de Inverno na edição brasileira -, assim como uma quantidade de contos que foram publicados em várias antologias e transmitidos por rádio e televisão. Seus romances foram publicados em 30 idiomas. The Boy in the Striped Pyjamas (O menino do pijama listrado (título no Brasil) ou O Menino do Pijama às Riscas (título em Portugal))é um Best Seller em Nova York e uma adaptação para o cinema começou a ser filmada', 1),
(null, 'Raphael Draccon', 'Raphael Draccon, pseudônimo de Rafael Albuquerque Pereira(Rio de Janeiro, 15 de junho de 1981),é um escritor brasileiro, conhecido principalmente pela trilogia Dragões de Éter. Romancista e roteirista, foi premiado pela American Screenwriter Association e considerado pela Revista Isto É como um dos dez escritores mais influentes do atual mercado literário brasileiro. Foi editor de seu próprio selo no grupo editorial Leya, a Fantasy - Casa da Palavra.', null),
(null, 'E. L. James', 'Erika Leonard James (7 de março de 1963), melhor conhecida pelo pseudônimo E.L. James, é uma escritora britânica, autora do bestseller erótico Cinquenta Tons de Cinza (no Brasil) ou As Cinquenta Sombras de Grey (em Portugal) (Fifty Shades of Grey). Em 2012 foi considerada pela revista Time umas das 100 pessoas mais influentes do mundo. Já em 2013, entrou para a lista das 100 celebridades mais poderosas da revista Forbes.', 2),
(null, 'Kiera Cass', 'Kiera Cass (Carolina do Sul, EUA, 1981) é autora da série Best seller internacional The Selection (A Seleção) e sua saga.Kiera publicou o primeiro livro da saga A Seleção (em inglês The Selection) em 2012 (até 2014, ano em que os livros A Elite como o segundo livro de sua saga,o terceiro A Escolha, o quarto livro A Herdeira e uma edição especial chamado Contos da Seleção aonde os pensamento e pontos de vistas de outros personagens da trilogia são compartilhados foram todos publicados).', 2),
(null, 'J. R. R. Tolkien', 'Sir John Ronald Reuel Tolkien, CBF, FRSL, conhecido internacionalmente por J. R. R. Tolkien (Bloemfontein, Estado Livre de Orange, atual África do Sul, 3 de janeiro de 1892 — Bournemouth, Inglaterra, Reino Unido, 2 de setembro de 1973),foi um premiado escritor, professor universitário e filólogo britânico, nascido na África, que recebeu o título de doutor em Letras e Filologia pela Universidade de Liège e Dublin, em 1954,e autor das obras como O Hobbit, O Senhor dos Anéis e O Silmarillion.', 1),
(null, 'Melo, Ricardo', 'Sei lá .. o cara manja ...', 1),
(null, 'Duhigg, Charles', 'O nome do cara é esquisito...', 1),
(null, 'Oliveira, Natanael', 'tem nome de velho', 1);
insert into autor VALUES (null, 'Berenice Carpigiani', 'autora de psicologia', '2');
insert into autor VALUES (null, 'Lya Wyler', 'autora de ficção', '2');
insert into autor VALUES (null, 'Jojo Moyes', 'autor de romance', '1');
insert into autor VALUES (null, 'Thomas Ryan', 'autor de ciências exatas', '1');


INSERT INTO `livro` VALUES
(null, 'Harry Potter e a Pedra Filosofal ', '01.jpg', 1,20),
(null, 'Harry Potter e a Câmara Secreta', '02.jpg', 1,20),
(null, 'As Leis Invisíveis do Dinheiro', 'livro1destaque.jpg', 14, 21),
(null, 'O Poder do Hábito - Por Que Fazemos o Que Fazemos ', 'livro2destaque.jpg', 15, 21),
(null, 'Seja o Empresário da Sua Idéia', 'livro2maislidos.jpg', 16, 21);
insert into livro VALUES (null, 'Das Raízes aos Movimentos Contemporâneos','capa.jpg', '1', '17');
insert into livro VALUES (null, 'Depois de Você','capa.jpg', '1', '11');
insert into livro VALUES (null, 'Estatística Moderna para Engenharia','capa.jpg', '1', '1');

insert into exemplar VALUES (null, 'capa.jpg', '3', '2009/01/01',6, 1);
insert into exemplar VALUES (null, 'capa.jpg', '1', '2000/01/25',8, 2);
insert into exemplar VALUES (null, 'capa.jpg', '1', '2015/01/15',6, 3);
insert into exemplar VALUES (null, 'capa.jpg', '1', '2009/10/07',6, 3);

insert into leitor VALUES (null, '123.456.789-12','1960/01/22','brasileira','2081-4955','1','1','11','2');
insert into leitor VALUES (null, '997.415.789-11','1999/10/15','brasileira','2288-3901','1','2','17','3');
insert into leitor VALUES (null, '958.222.879-15','2000/08/06','brasileira','5754-1607','2','3','8','4');

INSERT INTO `biblioteca` (`idBiblioteca`, `nome`, `idEndereco`) VALUES
(3, 'Nacional', 9),
(4, 'Centro de Tecnologia UFRJ', 10),
(5, 'Centro de Tecnologia UFRJ', 10);

