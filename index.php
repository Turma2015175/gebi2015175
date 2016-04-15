<?php
	
	define("DS","/"); //cria uma constante para substituir a \ por /	

	define("BASE_PATH", str_replace("\\",DS ,dirname(__FILE__)));

	include_once(BASE_PATH . DS . "loader.php");
	
?>
	
	

<!DOCTYPE html>

<html>
	<head>
		
		<link rel="stylesheet" href="app/assets/css/bootstrap.css">
		<link rel="stylesheet" href="app/assets/css/datepicker.css">
		<script src="app/assets/js/main.js"></script>
		<script src="app/assets/js/bootstrap-datepicker-pt-BR.js"></script>
		
		<script>
			
			$(function(){
			
				$('.datepicker').datepicker({
					format: 'dd/mm/yyyy'
				});
			
			});
			
		</script>
	</head>
	
	<body>
		
	</body>
	
	
</html>


