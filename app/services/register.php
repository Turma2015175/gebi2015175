			
			
			
			<?php
			
	if($_SERVER['REQUEST_METHOD']=="POST")
		{	$sbot = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "sbot", FILTER_SANITIZE_STRING))));
				
			if(!empty($sbot)) 
			{ 
			die("Acesso Negado");
			}
				
			else 
			{
					
			
				
				define("DS", "/");
				define("BASE_PATH", str_replace("\\", DS, dirname(__FILE__)));
				
				#echo $get = (string) trim(addslashes(strip_tags($_GET['param'])));
				$get = (string) trim(addslashes(strip_tags(filter_input(INPUT_GET, "acao", FILTER_SANITIZE_STRING))));
				
				$allow = array("login", "slider", "cadastrarUsuario", "genero");
				
				if(in_array($get, $allow))
				{
					require_once BASE_PATH . DS . "functions" . DS . "functions.php";
				}
				else
				{
					
					die("Acesso Negado");
					
				}
				
				
			}
		}
				else{
					die("Acesso Negado");
					
				}

			?>

