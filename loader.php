<?php
	
	$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET,"param", FILTER_SANITIZE_STRING))));
		
	
	$allow = array("login","quemsomos", "cadastrouser","cadastrolivro", "home", "emprestimo","usuarios");
	
	if(empty($get)){
		$url = BASE_PATH . DS . "app" . DS . "views" . DS . "home" . ".php";
	}
	elseif(in_array($get, $allow))
	    {
		
		$restritas = ["usuarios"];
		if(in_array($get, $restritas)){
			include_once BASE_PATH . "/app/services/functions/seguranca.php";
			valida();
		}
		
		$title = ucfirst($get);

		if(!empty($_SESSION['token']) || !empty($_SESSION['nome']) || !empty($_SESSION['id'])){
			echo $get;
			if ($get == "home"){
				
				$url = BASE_PATH . DS . "app" . DS . "views" . DS .  "usuarios" . ".php";
			}
			else{
			$url = BASE_PATH . DS . "app" . DS . "views" . DS .  $get . ".php";
		}
		}else{
			$url = BASE_PATH . DS . "app" . DS . "views" . DS .  $get . ".php";
		}
			
	    }
	else
	    {

			 $url = BASE_PATH . DS . "app" . DS . "views" . DS . "404.php";
		 
		 }	 
			
	
require_once BASE_PATH . DS . "app" . DS . "views" . DS . "template.php"; 
?>

