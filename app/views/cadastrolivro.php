<!-- Na tela de cadastro, o funcion�rio ter� a possibilidade de inserir os dados de um novo livro e/ou exemplar da biblioteca. 
Para cadastrar um novo livro basta inserir dados como dados como: t�tulo do livro, autor do livro, a editora, a edi��o o ano, 
o tipo de publica��o (por exemplo, livro, apostila, m�dia, artigo, entre outros) e cadastrar palavras chave para facilitar um futura pesquisa pelo livro.
 O campo data de Aquisi��o ser� preenchido automaticamente conforme a data atual em que o livro est� sendo cadastrado.
 Para cadastrar um exemplar de algum livro j� cadastrado, basta escolher o tipo de publica��o como sendo Exemplar e inserir o c�digo do livro,
 ent�o na tela ser� exibido o t�tulo, autor e editora do livro, sendo poss�vel editar a edi��o do exemplar, 
 o ano. O c�digo do exemplar ser� gerado automaticamente, bem como, a data de aquisi��o conforme a data atual de cadastramento do exemplar.-->


<form action="" method="" id="cadastrolivro">

	<fieldset>
		<legend>Cadastro de Livro</legend>
			<label class="cadastrolivro" for="codigo">C�digo Livro:</label>
			<input type="text" id="codlivro" name="codlivro" placeholder="CodLivro"/>
			
			<label class="cadastrolivro" for="publica��o">Tipo de Publica��o:</label>
			<select id="tipopublic" name="tipopublic">
			<option selected="selected">Tipo</option>
			<option value="livro">Livro</option>
			<option value="apostila">Apostila</option>
			<option value="m�dia">M�dia</option>
			<option value="artigo">Artigo</option>
			<option value="Outros">Outros</option>
			</select>
			<br/><br/>
			
			<label class="cadastrolivro" for="TituloLivro">T�tulo:</label>
			<input type="text" id="titulolivro" name="titulolivro" placeholder="Digite o T�tulo" size="60"/><br>
			
			<label class="cadastrolivro" for="autorlivro">Autor:</label>
			<input type="text" id="autorlivro" name="autorlivro" placeholder="Digite o Autor" size="60"/><br>
			
			<label class="cadastrolivro" for="editoralivro">Editora:</label>
			<input type="text" id="editoralivro" name="editoralivro" placeholder="Digite a Editora" size="60"/>
			
			<label class="cadastrolivro" for="edi�ao">Edi��o:</label>
			<input type="text" id="edicao" name="edicao" placeholder="n� Edi��o" size="5"/><br>
			
			<label class="cadastrolivro" for="Anoedicao">Ano:</label>
			<input type="text" id="Ano" name="Anoedicao" placeholder="Ano" size="5"/>
			
			
			<label class="cadastrolivro" for="codigo">C�digo:</label>
			<input type="text" id="anoedicao" name="Anoedicao" placeholder="Ano" size="5"/>
			
			<label class="cadastrolivro" for="Anoedi�ao">Ano:</label>
			<input type="text" id="Ano" name="Anoedi�ao" placeholder="Ano" size="5"/>
			
			<label class="cadastrolivro" for="dataaquisicao">Data de Aquisi��o:</label>
			<input type="date" id="dataaquisicao" name="dataaquisicao"><br><br>
			
			<label class="cadastrolivro" for="palavraschave">Palavras-Chave:</label>
			<input type="text" id="palavraschave" name="palavraschave" size="80"><br>
			
			
	</fieldset>
	
	
	
</form>


