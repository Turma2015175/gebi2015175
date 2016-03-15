 $(window).load(function(){
	$("#preloader").fadeOut(500);
	$("#site").fadeIn(500);
});

function Usuario(){
		this.validaLogin= function(el){
			el.preventDefault();
			
			$("#formLogin").validade({
					rules: {},
					message:{}
			});
		};
};