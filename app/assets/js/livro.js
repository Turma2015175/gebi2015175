


function Livro(){
	
	this.slider = function(){
		$.ajax({
				url: "app/services/slider",
				type: "POST"
				
			}).done(function(retorno){
				alert(retorno);
				retorno.each(function(key,val){
					console.log(val);
				});
				
				
			});
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
	
}