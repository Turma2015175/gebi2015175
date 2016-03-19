<form action="" method="" id="formulario">
	<fildset>
		<legend>Cadastro</legend>
						
		<label class="cadastro" class="cadastro" for="login">Login:</label>
		<input type="text" id="login" name="login" placeholder="Informe um Login."/>

		<label class="cadastro" class="cadastro" for="senha">Senha:</label>
		<input type="password" id="senha" name="senha" placeholder="Informe uma Senha."/>

		<label class="cadastro" class="cadastro" for="senha">Confirmação de Senha:</label>
		<input type="password" id="senha" name="senha" placeholder="Repita sua Senha."/>

		<label class="cadastro" class="cadastro" for="nome">Nome:</label>
		<input type="text" id="nome" name="nome" placeholder="Digite seu Nome."/>
									
		<label class="cadastro" for="sobrenome">Sobrenome:</label>
		<input type="text" id="sobrenome" name="sobrenome" placeholder="Digite seu Sobrenome."/>
								
		<label class="cadastro" for="email_pessoal">Email:</label>
		<input type="email" id="email_pessoal" name="email_pessoal" placeholder="Digite seu Email."/>
									
		<label class="cadastro" for="repita_email_pessoal">Confirmação de Email:</label>
		<input type="email" id="repita_email_pessoal" name="repita_email_pessoal" placeholder="Repita seu Email." />
									
		<label class="cadastro" for="sexo">Sexo:</label>
		<input type="radio" id="masculino" name="sexo"/>
		<label for="masculino">Masculino</label>
		<input type="radio" id="feminino" name="sexo"/>
		<label for="feminino">Feminino</label><br>
								
		<label class="cadastro" for="idade">Data de Nascimentos:</label>
		<input type="date" id="idade" name="idade"><br>
								
		<br>
		<label>Informe seu gênero favorito:</label><br>		
		<label  class="cadastro" for="biografia">Biografia</label>
		<input type="checkbox" id="biografia" name="biografia"/><br>
										
		<label  class="cadastro" for="comedia">Comédia</label>
		<input type="checkbox" id="comedia" name="comedia"/><br>

		<label  class="cadastro" for="drama">Drama</label>
		<input type="checkbox" id="drama" name="drama"/><br>

		<label  class="cadastro" for="estudos">Estudos</label>
		<input type="checkbox" id="estudos" name="estudos"/><br>

		<label  class="cadastro" for="ficcao">Ficção</label>
		<input type="checkbox" id="ficcao" name="ficcao"/><br>

		<label  class="cadastro" for="poesia">Poesia</label>
		<input type="checkbox" id="poesia" name="poesia"/><br>
									
		<label  class="cadastro" for="romantico">Românce</label>
		<input type="checkbox" id="romantico" name="romantico"/><br>

		<label  class="cadastro" for="policial">Românce Policial</label>
		<input type="checkbox" id="policial" name="policial"/><br>
								
		<label  class="cadastro" for="terror">Terror</label>
		<input type="checkbox" id="terror" name="terror"/><br>

		<label  class="cadastro" for="outro">Outros</label>
		<input type="checkbox" id="outro" name="outro"/><br>
	</fildset>	
	<input type="submit" value="Enviar" id="Enviar"/>
</form>