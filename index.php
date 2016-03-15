<?php
	
	/* Cria uma constante que informa o nome do 
	diretório onde o arquivo index.php esta 
	hospedado. */
	
	define("DS","/"); //cria uma constante para substituir a \ por /	
	
	/*A função ste_replace substitui um caracter 
	por outro em uma string, ela recebe 3 parametros.
	o caracter que vai ser substituido, o caracter 
	sustituto e a string*/
	define("BASE_PATH", str_replace("\\",DS ,dirname(__FILE__)));
	
	#Forma 2 nota:A barra esta invertida.
	define("BASE_PATH2", __DIR__);
	
	//Inclui o arquivo loader.php no arquivo index.php
	include_once(BASE_PATH . DS . "loader.php");
	
	
	


?>

