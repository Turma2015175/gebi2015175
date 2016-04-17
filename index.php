<?php
	
	define("DS","/"); //cria uma constante para substituir a \ por /	

	define("BASE_PATH", str_replace("\\",DS ,dirname(__FILE__)));

	include_once(BASE_PATH . DS . "loader.php");
	
?>
	
	

	

