<div class="col-xs-12">

<legend>Emprestimo</legend>

	<div class="row ">

		<div class="col-xs-12 col-sm-12 col-lg-6 col-md-6">
				<label class="emprestimo" for="livro">Nome do livro:</label>
				<input class="form-control" type="text" id="livro" name="livro" placeholder="Digite o nome"/>
		</div>
		
		<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 ">
				<label for="datasaida">Data de emprestimo: </label>
				<input class="form-control" id="datepicker1" type="text" name="datasaida" onkeypress="mascara(this, '##/##/####')" maxlength="10"  placeholder="__/__/____">
		</div>	
		
		<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 ">
				<label for="datasaida">Data de emprestimo: </label>
				<input class="form-control" id="datepicker1" type="text" name="datasaida" onkeypress="mascara(this, '##/##/####')" maxlength="10"  placeholder="__/__/____">
		</div>
	</div>


	<div class="row">

			<div class="col-xs-12 col-sm-12">
					<label class="emprestimo" for="enderecobiblioteca">Endereço da biblioteca</label>
					<input class="form-control" type="text" id="enderecobiblioteca" placeholder="Digite o endereço" name="enderecobiblioteca"/>
			</div>
		
	</div> 

	<div class="row">			
			<div class="col-xs-12 col-sm-8">
			<input class="btn btn-default" type="submit" value="Confirmar emprestimo" id="enviar"/>
			</div>
	</div>


</div>











