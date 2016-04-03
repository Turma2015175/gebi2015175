<fieldset>
		<legend>Empréstimo</legend>
		
		
			<label class="emprestino" for="livro">Nome do livro:</label>
				<input type="text" id="livro" name="livro" placeholder="Digite o nome"/><br /><br />
		
			
			<label class="emprestino" for="datasaida">Data de saída:</label>
				<input type="text" name="dia" size="2" maxlength="2" placeholder="dd"> 
				<input type="text" name="mes" size="2" maxlength="2" placeholder="mm"> 
				<input type="text" name="ano" size="4" maxlength="4" placeholder="aaaa"><br /><br />
		
			
			<label class="emprestino" for="datadevolucao">Data de devolução:</label>
				<input type="text" name="dia" size="2" maxlength="2" placeholder="dd"> 
				<input type="text" name="mes" size="2" maxlength="2" placeholder="mm"> 
				<input type="text" name="ano" size="4" maxlength="4" placeholder="aaaa"><br /><br />
				
		<!--Verificar a necessidade deste campo-->
		<label class="emprestino" for="comentarios">Comentários</label><br />
		<textarea rows="5" cols="35" maxlength="200" name="comentarios" id="comentarios"></textarea>  
			
			