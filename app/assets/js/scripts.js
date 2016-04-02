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
				}
			});
		}
		
	});
};