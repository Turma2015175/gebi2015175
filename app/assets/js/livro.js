

function Livro(){
	
	this.slider = function(){
		$.ajax({
				url: "app/services/slider",
				dataType: "json",
				type: "POST"
				
			}).done(function(retorno){

			for($i=0; $i < retorno.length; $i++){
				$("#LivrosSugerido").after('<div class="col-sm-6 col-md-4">'+
				'<div class="thumbnail">'+
				'<img alt="" src="app/assets/img/livros/'+retorno[$i].img+'" class="">'+
				'<div class="caption">'+
				'<h3>'+retorno[$i].titulo+'</h3>'+
				'<p>autor: '+retorno[$i].idAutor+' Genero: '+retorno[$i].idGenero+'</p>'+
				'<p><a role="button" href="#" class="btn btn-lg btn-primary">Pegar Emprestado</a></p>'+
				'</div>'+
				'</div>'+
				'</div>');
            }//fim do laço
				
				
			});
		};	
	this.genero = function(){
		$.ajax({
				url: "app/services/genero",
				dataType: "json",
				type: "POST"
				
			}).done(function(retorno){

			for($i=0; $i < retorno.length; $i++){			
			
			$("#listaDeGeneros").after('<a class="list-group-item" href="'+retorno[$i].genero+'">'+retorno[$i].genero+'</a>');
            }//fim do laço
				
				
			});
		};	
		
};
	
	
	/*$('#buscarLivro').validate({		
		rules: {
			p: {
				required: true
			}
		},
		messages: {
			p: {
				required: "Informe um parâmetro para busca."
			}
		},
		submitHandler: function(){
			
			dados = $("#buscarLivro").serialize();
			
			$.ajax({
				url: "app/services/buscarLivro",
				type: "POST",
				data: dados
			}).done(function(resposta){
				
				if(resposta.erro)
				{
					$(".alert").remove();
					$("#tabelaResultados").fadeOut();
					feedback("#titulo", "alert-danger", "glyphicon-warning-sign", resposta.mensagem);
				}
				
				else
				{
					location.href="./";					
					
				}
				
				
			});			
		}
		
	});*/
	
	function feedback(a, b, c, d){

		$(".alert").remove();
		$(a).after(
			'<div class="alert ' + b +' alert-dismissible" role="alert">' +
				'<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
					'<span aria-hidden="true">&times;</span>' +
				'</button>' +
				'<strong>' + 
					'<span class="glyphicon ' + c + '"></span>' +
				'</strong> ' + d +
			'</div>'		
		);
	
	};
	
