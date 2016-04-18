<!-- Na tela de cadastro, o funcionário terá a possibilidade de inserir os dados de um novo livro e/ou exemplar da biblioteca. 
Para cadastrar um novo livro basta inserir dados como dados como: título do livro, autor do livro, a editora, a edição o ano, 
o tipo de publicação (por exemplo, livro, apostila, mídia, artigo, entre outros) e cadastrar palavras chave para facilitar um futura pesquisa pelo livro.
 O campo data de Aquisição será preenchido automaticamente conforme a data atual em que o livro está sendo cadastrado.
 Para cadastrar um exemplar de algum livro já cadastrado, basta escolher o tipo de publicação como sendo Exemplar e inserir o código do livro,
 então na tela será exibido o título, autor e editora do livro, sendo possível editar a edição do exemplar, 
 o ano. O código do exemplar será gerado automaticamente, bem como, a data de aquisição conforme a data atual de cadastramento do exemplar. md lg -->

<div class="col-xs-12 col-sm-12 ">

<form action="" method="" id="cadastrolivro">

	<fieldset>
							
			<legend>Cadastro de Livro</legend>
			
			<div class="row">
				<div class="col-xs-12 col-sm-12">
					<div class="form-group cadastrolivro">
						<label for="titulolivro">Título</label>
						<input class="form-control" id="titulolivro" placeholder="Digite o Título">
					</div> 
				</div> 
					

			</div> 			
			
			<div class="row">

				<div class="col-xs-12 col-sm-12">
					<div class="form-group cadastrolivro">
						<label for="autorlivro">Autor</label>
						<input class="form-control" id="autorlivro" placeholder="Digite o Autor">
					</div> 
				</div> 
			</div> 
			
			
			<div class="row">
				<div class="col-xs-12 col-sm-8">
					<div class="form-group cadastrolivro">
						 <label for="editoralivro">Editora</label> 
						 <input class="form-control" id="editoralivro" placeholder="Editora" /> 
					 </div> 
				</div> 				
				
				
				<div class="col-xs-12 col-sm-2">
					<div class="form-group cadastrolivro">
						 <label for="edicao">Edição</label> 
						 <input class="form-control" id="edicao" placeholder="N°" />
					 </div> 
				</div> 
				
				<div class="col-xs-12 col-sm-2">
					<div class="form-group cadastrolivro">
						<label for="Anoedicao">Ano:</label>
						<input class="form-control" id="Ano" placeholder="Ano" />
					</div>
				</div>


			</div> 

			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group cadastrolivro">
						<label for="codigo">Código do livro:</label>
						<input class="form-control" id="anoedicao" placeholder="Código" />
					</div>
				</div>				

				<div class="col-xs-12 col-sm-4">
					<div class="form-group cadastrolivro">
						<label for="dataaquisicao">Data de Aquisição:</label>
						<input class="form-control" type="date" id="datepicker2" name="dataaquisicao" placeholder="__/__/____"/>
					</div>
				</div>
				
				<div class="col-xs-12 col-sm-4">
					<div class="form-group cadastrolivro">
					<label class="" for="publicacao">Tipo de Publicação:</label>
						<select class="form-control" id="tipopublic" name="tipopublic">
						<option selected="selected">Tipo</option>
						<option value="livro">Livro</option>
						<option value="apostila">Apostila</option>
						<option value="midia">Mídia</option>
						<option value="artigo">Artigo</option>
						<option value="Outros">Outros</option>
						</select>
					</div>
				</div>

			</div> 

			<div class="row">
				<div class="col-xs-12 col-sm12">
					<div class="form-group cadastrolivro">
						<label for="palavraschave">Palavra-Chave:</label>
						<input class="form-control" id="palavraschave" name="palavraschave" size="80" />
					</div>
				</div>				
				
			</div> 

		<div class="form-group cadastrolivro">
		<input class="btn btn-default" type="submit" value="Finalizar Cadastro" id="enviar"/>
		</div>
			


			

						
			
	</fieldset>
	
	
	
</form>
</div>



