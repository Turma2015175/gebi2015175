USE scrinia;

insert into usuario VALUES (null, sha1('123456'), 'Diego Santos', 'diegosantos@user.com', "avatar.jpg");
insert into usuario VALUES (null, sha1('123456'), 'Danilo Melo', 'danilomelo@user.com', "avatar.jpg");
insert into usuario VALUES (null, sha1('123456'), 'Bruna Almeida', 'brunaalmeida@user.com', "avatar.jpg");

insert into telefone VALUES (null, '021', '2288-3901', '99913-5608');
insert into telefone VALUES (null, '022', '2081-4955', '99360-0916');
insert into telefone VALUES (null, '023', '5754-1607', '99748-1428');

insert into sexo VALUES (null,'Masculino');
insert into sexo VALUES (null, 'Feminino');

insert into endereco VALUES (null, 'Brasil', '58410-210', 'Rua José de Brito Lira', '11', 'Catolé','São Paulo');
insert into endereco VALUES (null, 'Brasil', '64078-730', 'Rua Manoel Ildefonso Lima', '22', 'Parque Ideal','Piauí');
insert into endereco VALUES (null, 'Brasil', '95112-122', 'Rua Coronel Alorino Machado de Lucena', '33', 'Cidade Nova','Rio Grande do Sul');
insert into endereco VALUES (null, 'Brasil', '20550-010', 'RUa São Francisco Xavier,','417','Maracanã', 'Rio de Janeiro'); 



insert into editora VALUES (null, 'Editora Schoba');
insert into editora VALUES (null, 'Editora Livre Expressão');
insert into editora VALUES (null, 'Editora Arqueiro');

insert into genero VALUES (null,'Biografias e Memórias'),(null,'Contos'),(null,'Cordel'),(null,'Crônica'),(null,'Ensaios'),(null,'Erótico'),(null,'Ficção científica'),(null,'Novela'),(null,'Poesia'),(null,'Policial'),(null,'Romance'),(null,'Romance autobiográfico'),(null,'Romance histórico'),(null,'Teatro'),(null,'Terror'),(null,'Tragédia'),(null,'Baseado em fatos reais'),(null,'Livro-reportagem'),(null,'Quadrinhos');


insert into autor VALUES (null, 'Berenice Carpigiani', 'autora de psicologia', '2');
insert into autor VALUES (null, 'Lya Wyler', 'autora de ficção', '2');
insert into autor VALUES (null, 'Jojo Moyes', 'autor de romance', '1');
insert into autor VALUES (null, 'Thomas Ryan', 'autor de ciências exatas', '1');

insert into livro VALUES (null, 'Das Raízes aos Movimentos Contemporâneos','capa.jpg', '1', '17');
insert into livro VALUES (null, 'Harry Potter- e a câmara secreta','capa.jpg', '2', '17');
insert into livro VALUES (null, 'Depois de Você','capa.jpg', '1', '11');
insert into livro VALUES (null, 'Estatística Moderna para Engenharia','capa.jpg', '1', '1');

insert into exemplar VALUES (null, 'capa.jpg', '3', '2009/01/01','1', '1');
insert into exemplar VALUES (null, 'capa.jpg', '1', '2000/01/25','3', '2');
insert into exemplar VALUES (null, 'capa.jpg', '1', '2015/01/15','1', '3');
insert into exemplar VALUES (null, 'capa.jpg', '1', '2009/10/07','1', '3');

insert into leitor VALUES (null, '123.456.789-12','1960/01/22','brasileira','2081-4955','1','1','11','2');
insert into leitor VALUES (null, '997.415.789-11','1999/10/15','brasileira','2288-3901','1','2','17','3');
insert into leitor VALUES (null, '958.222.879-15','2000/08/06','brasileira','5754-1607','2','3','8','4');
