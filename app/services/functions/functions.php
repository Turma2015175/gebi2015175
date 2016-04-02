<?php

	require_once BASE_PATH . DS . "database". DS . "conexao.php";
	
	
	switch($get)
	{ 
		case 	"login":
				login($con);
				break;
	}			

	function login($con)
	{
		$email = trim(strip_tags(addslashes(filter_input(INPUT_POST,"email"))));
		$senha = trim(strip_tags(addslashes(filter_input(INPUT_POST,"senha"))));
		
		$sql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";
		
		$stmt = $con->prepare($sql);
		$stmt->bindValue(1, $email); 
		$stmt->bindValue(2, sha1($senha));
		$resul = $stmt->execute();
		

		if ($stmt->rowCount() > 0)
		{
			$dados = $stmt->fetch(PDO::FETCH_ASSOC);	
			
			session_start();
			$_SESSION['nome'] = $dados['nome'];
			
			$info = array('erro' => false);
			
		} else {
			$info = array ("erro"=>true, 
			"mensagem"=>"verifique email e/ou senha.");
		}
		retorno($info);
	}
	
	function retorno($array)
	{
		header("Content-Type: application/json");
		echo json_encode($array);
	}
?>