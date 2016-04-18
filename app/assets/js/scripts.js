 $(window).load(function(){
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);
});

function Usuario(){
		
	$('#formLogin').validate({
		
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



	
	$("#logout").click(function(){
			$.ajax({
				url: "app/services/logout",
				type: "POST"
			}).done(function(resposta){
				if(!resposta.erro){

					location.href="./";
				}
			});
	});
	
	
	
	jQuery.validator.addMethod("cpf", function(value, element) {
   value = jQuery.trim(value);

    value = value.replace('.','');
    value = value.replace('.','');
    cpf = value.replace('-','');
    while(cpf.length < 11) cpf = "0"+ cpf;
    var expReg = /^0+$|^1+$|^2+$|^3+$|^4+$|^5+$|^6+$|^7+$|^8+$|^9+$/;
    var a = [];
    var b = new Number;
    var c = 11;
    for (i=0; i<11; i++){
        a[i] = cpf.charAt(i);
        if (i < 9) b += (a[i] * --c);
    }
    if ((x = b % 11) < 2) { a[9] = 0 } else { a[9] = 11-x }
    b = 0;
    c = 11;
    for (y=0; y<10; y++) b += (a[y] * c--);
    if ((x = b % 11) < 2) { a[10] = 0; } else { a[10] = 11-x; }

    var retorno = true;
    if ((cpf.charAt(9) != a[9]) || (cpf.charAt(10) != a[10]) || cpf.match(expReg)) retorno = false;

    return this.optional(element) || retorno;

}, "Informe um CPF válido");

	$("#formCadastroUsuario").validate({		
		rules : {
			nome : {
				required : true,
				minlength : 10,
				maxlength : 50
			},
			idade :{
				required: true,
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
			cpf :{
				cpf: true, 
				required: true,
				
			},
			telefone : {
				required : true,
				maxlength : 12
			},
			celular : {
				required : true,
				maxlength : 13
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
			idade : {
				required : " Coloque sua data de nascimento"
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
			cpf :{
				required:"Preencha o campo CPF",
				cpf:"CPF invalido"
			},
			telefone : {
				required : "Preencha o campo telefone.",
				maxlength : "Seu número de telefone deve conter no máximo 15 caracteres."
			},
			celular : {
				required : "Preencha o campo telefone.",
				maxlength : "Seu número de celular deve conter no máximo 11 caracteres."
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
			estados : {
				required: "Selecione um estado"
			},
			logradoura : {
				required: "Selecione um logradoura"
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
					alert(resposta.mensagem);					
				}
				else
				{

					location.href="./usuarios";
				}
				
			});			
		}		
	});
	
	
};
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