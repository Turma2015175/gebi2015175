<!-- Na tela de cadastro, o funcionário terá a possibilidade de inserir os dados de um novo livro e/ou exemplar da biblioteca. 
Para cadastrar um novo livro basta inserir dados como dados como: título do livro, autor do livro, a editora, a edição o ano, 
o tipo de publicação (por exemplo, livro, apostila, mídia, artigo, entre outros) e cadastrar palavras chave para facilitar um futura pesquisa pelo livro.
 O campo data de Aquisição será preenchido automaticamente conforme a data atual em que o livro está sendo cadastrado.
 Para cadastrar um exemplar de algum livro já cadastrado, basta escolher o tipo de publicação como sendo Exemplar e inserir o código do livro,
 então na tela será exibido o título, autor e editora do livro, sendo possível editar a edição do exemplar, 
 o ano. O código do exemplar será gerado automaticamente, bem como, a data de aquisição conforme a data atual de cadastramento do exemplar.-->


<form action="" method="" id="cadastrolivro">

	<fieldset>
		<legend>Cadastro de Livro</legend>
			<label class="cadastrolivro" for="codigo">Código Livro:</label>
			<input type="text" id="codlivro" name="codlivro" placeholder="CodLivro"/>
			
			<label class="cadastrolivro" for="publica��o">Tipo de Publicação:</label>
			<select id="tipopublic" name="tipopublic">
			<option selected="selected">Tipo</option>
			<option value="livro">Livro</option>
			<option value="apostila">Apostila</option>
			<option value="midia">Mídia</option>
			<option value="artigo">Artigo</option>
			<option value="Outros">Outros</option>
			</select>
			<br/><br/>
			
			<label class="cadastrolivro" for="TituloLivro">Título:</label>
			<input type="text" id="titulolivro" name="titulolivro" placeholder="Digite o Título" size="60"/><br>
			
			<label class="cadastrolivro" for="autorlivro">Autor:</label>
			<input type="text" id="autorlivro" name="autorlivro" placeholder="Digite o Autor" size="60"/><br>
			
			<label class="cadastrolivro" for="editoralivro">Editora:</label>
			<input type="text" id="editoralivro" name="editoralivro" placeholder="Digite a Editora" size="60"/>
			
			<label class="cadastrolivro" for="edicao">Edição:</label>
			<input type="text" id="edicao" name="edicao" placeholder="n° Edição" size="5"/><br>
			
			<label class="cadastrolivro" for="Anoedicao">Ano:</label>
			<input type="text" id="Ano" name="Anoedicao" placeholder="Ano" size="5"/>
			
			
			<label class="cadastrolivro" for="codigo">Código:</label>
			<input type="text" id="anoedicao" name="Anoedicao" placeholder="Ano" size="5"/>
			
			<label class="cadastrolivro" for="Anoedicao">Ano:</label>
			<input type="text" id="Ano" name="Anoedicao" placeholder="Ano" size="5"/>
			
			<label class="cadastrolivro" for="dataaquisicao">Data de Aquisição:</label>
			<input type="date" id="dataaquisicao" name="dataaquisicao"><br><br>
			
			<label class="cadastrolivro" for="palavraschave">Palavras-Chave:</label>
			<input type="text" id="palavraschave" name="palavraschave" size="80"><br>
			
			
	</fieldset>
	
	
	
</form>


