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

insert into editora VALUES (null, 'Editora Schoba');
insert into editora VALUES (null, 'Editora Livre Expressão');
insert into editora VALUES (null, 'Editora Arqueiro');

insert into genero VALUES (null,'Biografias e Memórias'),(null,'Contos'),(null,'Cordel'),(null,'Crônica'),(null,'Ensaios'),(null,'Erótico'),(null,'Ficção científica'),(null,'Novela'),(null,'Poesia'),(null,'Policial'),(null,'Romance'),(null,'Romance autobiográfico'),(null,'Romance histórico'),(null,'Teatro'),(null,'Terror'),(null,'Tragédia'),(null,'Baseado em fatos reais'),(null,'Livro-reportagem'),(null,'Quadrinhos');






