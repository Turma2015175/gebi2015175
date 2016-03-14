<?php
	define("DS","/");	
	
	//define("BASE_PATH", str_replace("\\",DS ,dirname(__FILE__)));
	
	define("BASE_PATH", str_replace("\\",DS , __DIR__));
	
	include_once(BASE_PATH . DS . "loader.php");


?>

