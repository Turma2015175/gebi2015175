var usuario = new Usuario();

var formLogin = $("#formLogin");



(function($){
		
	$(function(){
		
		formLogin.submit(function(el){
				usuario.validaLogin(el);
		});
		
	});		
		
})(jQuery)