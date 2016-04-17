<?php
	
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET,"param", FILTER_SANITIZE_STRING))));
		
	
	$allow = array("login","quemsomos", "cadastrouser","cadastrolivro", "home", "emprestimo","usuarios","livros","livro","cadastrobiblioteca");
	
	if(empty($get)){
		$url = BASE_PATH . DS . "app" . DS . "views" . DS . "home" . ".php";
		$title = ucfirst("home");
	}
	elseif(in_array($get, $allow))
	    {

		$restritas = ["usuarios"];
		if(in_array($get, $restritas)){
			include_once BASE_PATH . "/app/services/functions/seguranca.php";
			valida();
		}

		$title = ucfirst($get);

		$url = BASE_PATH . DS . "app" . DS . "views" . DS .  $get . ".php";
		
			
	    }
	else
	    {

			 $url = BASE_PATH . DS . "app" . DS . "views" . DS . "404.php";
		 
		 }	 
			
	
require_once BASE_PATH . DS . "app" . DS . "views" . DS . "template.php"; 
?>

