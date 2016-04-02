<?php
	/*
	(string) = transforma em string
	trim() = remove todos os espaços
	*/
	#$get = (string) trim(addslashes(strip_tags($_GET['param'])));
	
	
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET,"param", FILTER_SANITIZE_STRING))));
		
	/* $allow = array("login","painel");
	
	if(in_array($get, $allow))
	{
		echo $get;
	}
	else
	{
		echo " Erro 404";
	} */
	
	$allow = array("login","quemsomos", "cadastrouser","cadastrolivro", "home");
	
	if(empty($get)){
		$url = BASE_PATH . DS . "app" . DS . "views" . DS . "home" . ".php";
	}
	elseif(in_array($get, $allow))
	    {
		
			$url = BASE_PATH . DS . "app" . DS . "views" . DS . $get . ".php";
			
	    }
	else
	    {

			 $url = BASE_PATH . DS . "app" . DS . "views" . DS . "404.php";
		 
		 }	 
			
	
require_once BASE_PATH . DS . "app" . DS . "views" . DS . "template.php"; 
?>

