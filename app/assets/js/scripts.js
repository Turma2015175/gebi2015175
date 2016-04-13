 $(window).load(function(){
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);
});

function Usuario(){
		
	$("#formLogin").validate({
		rules: {
			email : {
				required: true,
				email: true				
			},
			
			senha: {
				required: true,
				minlength: 6,
			}
			
		},
		messages: {
			email : {
				required : "Preencha o campo e-mail.",
				email : "Email inválido."
			},
			senha: {
				required : "Preencha o campo senha.",
				minlength : "Sua senha deverá conter no mínimo 6 caracteres.",
				maxlength : "Sua senha deverá conter no máximo 12 caracteres."
			}
		},
		submitHandler: function(){
			formData = $("#formLogin").serialize();
			$.ajax({
				url: "app/services/login",
				type: "POST",
				data: formData
			}).done(function(data){
				if(data.erro){
					$("#feedback").empty();
					var alerta = $("<div />");
					
					var btn = $("<button />");
					
					var span = $("<span />");
					
					var strong = $("<strong />");
					
					var icone = $("<span />");
					
					icone.attr({
						"class":"glyphicon glyphicon-warning-sign",
						"aria-hidden":"true"
					});
					
					span.attr({
						"aria-hidden":"true"
					});
					span.html("&times;");
					
					btn.attr({
						"type":"button", 
						"class":"close" ,
						"data-dismiss":"alert" ,
						"aria-label":"Close"
					});
					
					alerta.attr({
						"class": "alert alert-danger alert-dismissible",
						"role": "alert"
					});
					
					strong.append(icone);
					btn.append(span);
					alerta.append(btn);
					alerta.append(strong);
					alerta.append(data.mensagem);
					
					
					$("#feedback").append(alerta);
					return false;
				}else{
					location.href="./usuarios";
				}
			});
		}
		
	});
};

$("#formCadastroUsuario").validate({		
		rules : {
			nome : {
				required : true,
				minlength : 10,
				maxlength : 50
			},
			sobrenome : {
				required : true,
				minlength : 10
			},
			email_pessoal : {
				required : true,
				email : true,
				maxlength : 50
			},
			repita_email_pessoal : {
				required : true,
				email : true
			},
			telefone : {
				required : true,
				maxlength : 15
			},
			celular : {
				required : true,
				maxlength : 11
			},
			login : {
				required : true,
				minlength: 6,
				maxlength: 12
			},
			senha : {
				required : true,
				minlength : 6,
				maxlength : 20
			},
			rsenha : {
				required : true
			},
			cep : {
				required : true,
				maxlength : 9
			},
			endereco : {
				required : true,
				maxlength : 50
			},
			numero : {
				required: true,
				maxlength: 5
			},
			bairro : {
				required: true,
				maxlength : 50
			}
		},
		messages : {
			nome : {
				required : "Preencha o campo nome.",
				minlength : "Seu nome deve conter no mínimo 10 caracteres.",
				maxlength : "Seu nome deve conter no máximo 50 caracteres."
			},
			sobrenome : {
				required : "Preencha o campo sobrenome.",
				minlength : "Seu nome deve conter no mínimo 10 caracteres."
			},
			email_pessoal : {
				required : "Preencha o campo e-mail.",
				email : "E-mail inválido.",
				maxlength : "Seu email deve conter no máximo 50 caracteres."
			},
			repita_email_pessoal : {
				required : "Repita seu E-mail.",
				email : "E-mail inválido."
			},
			telefone : {
				required : "Preencha o campo telefone.",
				maxlength : "Seu número de telefone deve conter no máximo 15 caracteres."
			},
			celular : {
				required : "Preencha o campo telefone.",
				maxlength : "Seu número de celular deve conter no máximo 11 caracteres."
			},
			login : {
				required : "Preencha o campo login",
				minlength : "Seu login deve conter no mínimo 6 caracteres.",
				maxlength : "Seu login deve conter no máximo 12 caracteres."
			},
			senha : {
				required : "Preencha o campo senha.",
				minlength : "Sua senha deve conter no mínimo 6 caracteres.",
				maxlength : "Sua senha deve conter no máximo 20 caracteres."
			},
			rsenha : {
				required : "Repita sua senha."
			},
			cep : {
				required : "Preencha o campo cep.",
				maxlength : "Seu cep deve conter no máximo 9 caracteres."
			},
			endereco : {
				required : "Preencha o campo endereço.",
				maxlength : "Seu endereço deve conter no máximo 50 caracteres."
			},
			numero : {
				required : "Preencha o campo número.",
				maxlength : "O campo númeor deve conter no máximo 5 caracteres."
			},
			bairro : {
				required : "Preencha o campo bairro.",
				maxlength : "O campo bairro deve conter no máximo 50 caracteres."
			}
		},
		submitHandler : function(dados){
			var formData = new FormData(dados);
			
			$.ajax({
				url: "app/services/cadastrarUsuario",
				type: "POST",
				contentType : false,
				processData: false,
				data : formData,
				async: false
			}).done(function(resposta){
				
				if(resposta.erro)
				{
					$(".alert").remove();
					feedback("#titulo", "alert-danger", "glyphicon-warning-sign", resposta.mensagem);
				}
				else
				{
					$(".alert").remove();
					feedback("#titulo", "alert-success", "glyphicon-ok", resposta.mensagem);
				}
				
			});			
		}		
	});

$('.bxslider').bxSlider({
  mode: 'fade',
  captions: true
});
