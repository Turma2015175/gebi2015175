<div class="col-xs-10 col-sm-10">

<h1>Emprestimo</h1>

			
				<form id="formemprestimo">			
				
					<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label class="emprestimo" for="livro">Nome do livro:</label>
						<input class="form-control" type="text" id="livro" name="livro" placeholder="Digite o nome"/>
					</div>
				</div>
				
				<!--<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label class="emprestimo" form="datasaida">Data de emprestimo:</label> 
						<input id="datasaida"   class="datepicker" type="text" name="datasaida">
						
					</div>
				</div>-->
				
				<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label for="datasaida">Data de emprestimo: </label>
								<input class="form-control" id="datepicker1" type="text" id="datasaida" name="datasaida"  placeholder="__/__/____">
						</div>
					</div>
				
				<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label for="datadevolucao">Data de devolução: </label>
						<input class="form-control" id="datepicker2" type="text" id="datadevolucao" name="datadevolucao"  placeholder="__/__/____">
					</div>
				</div>
						
				<!--<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label class="emprestimo">Data de devolução:</label>
						<input class="datepicker" type="text" name="date2">
						
					</div>
				</div>-->
				
				<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<label class="emprestimo" for="enderecobiblioteca">Endereço da biblioteca</label>
						<input class="form-control" type="text" id="enderecobiblioteca" name="enderecobiblioteca"/>
					</div>
				</div>
				
				<div class="col-xs-12 col-sm-8">
				<input class="btn btn-default" type="submit" value="confirmar emprestimo" id="enviar"/>
			
		</form>
</div>