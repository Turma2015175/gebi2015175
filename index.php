<?php
	
	define("DS","/"); //cria uma constante para substituir a \ por /	

	define("BASE_PATH", str_replace("\\",DS ,dirname(__FILE__)));

	include_once(BASE_PATH . DS . "loader.php");
	
?>
	
	

<script>
			
			$(function(){
			
				$('#datepicker1').datepicker({
					format: 'dd/mm/yyyy'
				}).on('changeDate', function(e){
					$(this).datepicker('hide');
				});
				
				$('#datepicker2').datepicker({
					format: 'dd/mm/yyyy'
				}).on('changeDate', function(e){
					$(this).datepicker('hide');
				});
				
				$('#datepicker3').datepicker({
					format: 'dd/mm/yyyy'
				}).on('changeDate', function(e){
					$(this).datepicker('hide');
				});
				
			
			});
			
		</script>
	

