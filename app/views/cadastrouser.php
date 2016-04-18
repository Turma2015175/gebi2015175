<script language="JavaScript">


 function mascara(t, mask){
 var i = t.value.length;
 var saida = mask.substring(1,0);
 var texto = mask.substring(i)
 if (texto.substring(0,1) != saida){
 t.value += texto.substring(0,1);
 }
 }
 </script>
<div class="col-xs-12 col-sm-12">

<div class="col-xs-12 col-sm-12 ">

	<form action="" method="" id="formCadastroUsuario">
		<fieldset class="col-xs-12 col-sm-12">
			<legend>Cadastro de usuários</legend>

			<div class="row">
				<div class="col-xs-12 col-sm-12">
					<label for="nome">Nome:</label>
					<input class="form-control" type="text" id="nome" name="nome" placeholder="Digite seu Nome completo."/>
				</div>	
			</div>	
				
			<div class="row">
			
				<div class="col-xs-12 col-sm-4">
					<label for="idade">Data de Nascimento:</label>
					<input class="form-control" style="width: 260px;" type="date" id="idade" name="idade"/>
				</div>	

			</div>
			

			<div class="row">
					

					<div class="form-group radio direita" style="display: inline-block; padding: 20px 0 0 20px;">
						<label for="sexo"> 
							<label for="masculino">
								<input type="radio" name="sexo" id="masculino" value="masculino">Masculino
							</label>

				<div class="col-xs-12 col-sm-8">
				

					<label for="sexo">
					<div class="form-group radio " style="display: inline-block; padding: 20px 0 0 0px;">
						<label for="masculino">
							<input type="radio" name="sexo" id="masculino" value="masculino">Masculino
						</label>

						
						<label for="feminino">
							<input type="radio" name="sexo" id="feminino" value="feminino">Feminino
						</label>
					</div>	

					</label>
				</div>
			</div>


			<div class="row">
				
				
				<div class="col-xs-12 col-sm-4">
			
				<div class="form-group">
					<label for="telefone">Telefone:</label>
					<input class="form-control" type="text" id="telefone" name="telefone" onkeypress="mascara(this, '## ####-####')" placeholder="Digite seu Telefone."/>
				</div>	
				</div>	
				
				
				<div class="col-xs-12 col-sm-8">
				
				<div class="form-group">
					<label for="email_pessoal">Email:</label>
					<input class="form-control" type="email" id="email_pessoal" name="email_pessoal"  placeholder="Digite seu Email."/>
				</div>	
				</div>	
			</div>
				
				<div class="form-group">
					<label for="rsenha">Senha:</label>
					<input class="form-control" type="password" id="senha" name="senha" placeholder="Digite sua Senha."/>
				</div>

				

			<div class="col-xs-12 col-sm-6">
			
				<div class="form-group">
					<label for="cpf">CPF:</label>
					<input class="form-control" type="text" id="cpf" name="cpf" onkeypress="mascara(this, '###.###.###-##')" placeholder="Digite seu CPF."/>
				</div>
				
				<div class="form-group">
					<label for="celular">Celular:</label>
					<input class="form-control" type="text" id="celular" name="celular" onkeypress="mascara(this, '## #####-####')" placeholder="Digite seu Celular."/>
				</div>	
				
				<div class="form-group">
					<label for="repita_email_pessoal">Confirmação de Email:</label>
					<input class="form-control" type="email" id="repita_email_pessoal" name="repita_email_pessoal" placeholder="Repita seu Email." />
				</div>
				
				<div class="form-group">
					<label for="rsenha">Confirmação de Senha:</label>
					<input class="form-control" type="password" id="rsenha" name="rsenha" placeholder="Repita sua Senha."/>
				</div>				
			</div>
			
		
			<label>Informe seu género favorito:</label>
			
				<div class="checkbox">
				
					<label for="autoajuda">
						<input type="checkbox" id="autoajuda" name="autoajuda"/>Auto Ajuda
					</label>
				
					<label for="aventura">
						<input type="checkbox" id="aventura" name="aventura"/>Aventura
					</label>
					
				
					<label for="biografia">
						<input type="checkbox" id="biografia" name="biografia"/>Biografia
					</label>
				
					<label for="comedia">
						<input type="checkbox" id="comedia" name="comedia"/>Comédia
					</label>
				
					<label for="contos">
						<input type="checkbox" id="contos" name="contos"/>Contos
					</label>
					
				
					<label for="drama">
						<input type="checkbox" id="drama" name="drama"/>Drama
					</label>
					
					<label for="estudos">
						<input type="checkbox" id="estudos" name="estudos"/>Estudos
					</label>
					
					<label for="ficcao">
						<input type="checkbox" id="ficcao" name="ficcao"/>Ficção
					</label>
					
					<label for="historia">
						<input type="checkbox" id="historia" name="historia"/>História
					</label>
					
					<label for="poesia">
						<input type="checkbox" id="poesia" name="poesia"/>Poesia
					</label>
					
					<label for="romantico">
						<input type="checkbox" id="romantico" name="romantico"/>Romance
					</label>
					
					<label for="policial">
						<input type="checkbox" id="policial" name="policial"/>Romance Policial
					</label>
					
					<label for="terror">
						<input type="checkbox" id="terror" name="terror"/>Terror
					</label>
					
					<label for="outro">
						<input type="checkbox" id="outro" name="outro"/>Outros
					</label>
					
				</div>	
		</fieldset>
		
		<fieldset class="col-xs-12 col-sm-12">
			<legend>Endereço</legend>

			<div class="col-xs-12 col-sm-6">
						
				<div class="form-group">	
					<label for="cep">CEP:</label>
					<input class="form-control" type="text" id="cep" name="cep" onkeypress="mascara(this, '#####-###')" placeholder="Digite seu CEP."/>
				</div>	
				
				<div class="form-group">	
					<label for="logradoura">logradoura:</label>
					<select class="form-control required" id="logradoura" name="logradoura" />
						<option value=""> Selecione...</option>
						<option value="Rua">Rua</option>
						<option value="Avenida">Avenida</option>
						<option value="Bloco">Bloco</option>
						<option value="Praça">Praça</option>
						<option value="Quadra">Quadra</option>
						<option value="Outros">Outros</option>
					</select>
				</div>
				
				<div class="form-group">	
					<label for="bairro">Bairro:</label>
					<input class="form-control" type="text" id="bairro" name="bairro" placeholder="Digite seu Bairro."/>
				</div>	

				<div class="form-group">
					<p class="text-info">Apenas imagens jpg, jpeg e png</p>
					<label for="arquivo">Escolha sua imagem</label>
					<input type="file" name="arquivo" id="arquivo" >
				</div>
				<input class="btn btn-default" type="submit" value="Finalizar Cadastro" id="enviar"/>
			</div>
			
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="estados">Estado:</label>	
							<select class="form-control required" name="estados">
								<option value="">Selecione...</option>
								<option value="ac">Acre</option>
								<option value="al">Alagoas</option>
								<option value="ap">Amapá</option>
								<option value="am">Amazonas</option>
								<option value="ba">Bahia</option>
								<option value="ce">Ceará</option>
								<option value="df">Distrito Federal</option>
								<option value="es">Espirito Santo</option>
								<option value="go">Goiás</option>
								<option value="ma">Maranhão</option>
								<option value="ms">Mato Grosso do Sul</option>
								<option value="mt">Mato Grosso</option>
								<option value="mg">Minas Gerais</option>
								<option value="pa">Pará</option>
								<option value="pb">Paraíba</option>
								<option value="pr">Paraná</option>
								<option value="pe">Pernambuco</option>
								<option value="pi">Piauí</option>
								<option value="rj">Rio de Janeiro</option>
								<option value="rn">Rio Grande do Norte</option>
								<option value="rs">Rio Grande do Sul</option>
								<option value="ro">Rondônia</option>
								<option value="rr">Roraima</option>
								<option value="sc">Santa Catarina</option>
								<option value="sp">São Paulo</option>
								<option value="se">Sergipe</option>
								<option value="to">Tocantins</option>
							</select>
					</div>
					
					<div class="form-group">
						<label for="endereco" >Endereço:</label>
						<input class="form-control" type="text" id="end" name="endereco" placeholder="Digite seu Endereço."/>
					</div>	
					
					<div class="form-group">
						<label for="numero">Número:</label>
						<input class="form-control" type="text" id="numEnd" name="numero" placeholder="Número"/>
					</div>
				</div>
			
			
			
		</fieldset>	
	</form>
</div>
