<?php

	require_once BASE_PATH . DS . "database". DS . "conexao.php";
	
	
	switch($get){
		case "login":
			login($con);
		break;
		case "cadastrarUsuario":
			cadastrarUsuario($con);
		break;
		case "logout":
			logout($con);
			break;
		case "slider":
			slider($con);
			break;
		case "genero":
			genero($con);
			break;
	}	
	function logout(){
		session_start();
		unset($_SESSION['nome'],$_SESSION['token'],$_SESSION['id']);
		session_destroy();
		retorno(['erro'=>false]);
	}
	
	
	function login($con){
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
			$_SESSION['token'] = md5($dados['email']);
			$_SESSION['id'] = $dados['idUsuario'];
			$_SESSION['img'] = $dados['img'];
			
			$info = array("erro" => false);
			
		} else {
			$info = array ("erro"=>true, 
			"mensagem"=>"verifique email e/ou senha.");
		}
		retorno($info);
	}
	
	function slider($con){
		
		
		$sql = "SELECT * FROM livro LIMIT 3";
		
		$stmt = $con->query($sql);
		$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$var = array();

		foreach ($dados as $key => $value){
			
			$dados[$key] = [
			'idLivro' => $value['idLivro'],
			'titulo' => utf8_decode($value['titulo']),
			'img' => $value['img'],
			'idAutor' => $value['idAutor'],
			'idGenero' => $value['idGenero']
		];
			
		};
		
		echo json_encode($dados);


		//retorno($dados);
	}
	
	
	
	function genero($con){
		
		
		$sql = "SELECT * FROM genero";
		
		$stmt = $con->query($sql);
		$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		foreach ($dados as $key => $value){
			
			$dados[$key] = [
			'idGenero' => $value['idGenero'],
			'genero' => utf8_decode($value['genero'])
		];
			
		};
		echo json_encode($dados);
	}
	
	function cadastrarUsuario($con)
	{
		
		$dir = explode("/", BASE_PATH) ;
		$dir = $dir[0] . "/" . $dir[1] . "/" . $dir[2] . "/" . $dir[3] . "/" . $dir[4];		
		$dir .= "/app/assets/img/usuarios/";
		$ext = @end(explode("/", $_FILES['arquivo']['type']));
		$tmp_name = $_FILES['arquivo']['tmp_name'];
		$nomeImg = md5(date("d/m/Y H:i:s").$_POST['email_pessoal']);
		
		$senha = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'senha'))));
		$nome = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'nome'))));
		$email = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'email_pessoal'))));
		$pais = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'pais'))));
		$cep = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'cep'))));
		$endereco = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'end'))));
		$numEnd = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'numEnd'))));
		$bairro = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'bairro'))));
		$estado = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'estado'))));
	


	
		
		$telefone = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'telefone'))));
		$cpf = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'cpf'))));
		$celular = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'celular'))));
		
		$sexo = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'sexo'))));
		
		$biografia = trim(addslashes(strip_tags(filter_input(INPUT_POST, 'biografia'))));
		
		
		

		
		
		
		$senha = sha1($senha);
		
		$imagem = $nomeImg.".".$ext;
		
		
		
		$imagem = (empty($_FILES['arquivo']['name'])) ? "avatar.png" : $imagem;
		
		$erro = [
			"erro"=> true,
			"mensagem" => "Erro ao cadastrar. Tente novamente."
		];
		
		
		$con->beginTransaction();
		

		$sql = "INSERT INTO usuario VALUES(null,'".$senha."','".$nome."','".$email."','".$imagem."');";
		$stmt = $con->prepare($sql);
		
		$resul = $stmt->execute();

		$ok = [
			"erro"=>false,
			"mensagem"=>"Usuário cadastrado com sucesso.",
			"nome" => $nome
		];

		if(!$resul)
		{
			$mensagem = $erro;			
			$con->rollback();
		}	
		
		elseif($imagem == "avatar.png" && $resul)
		{
			$dados = $stmt->fetch(PDO::FETCH_ASSOC);	
			
			session_start();
			$_SESSION['nome'] = $nome;
			$_SESSION['token'] = md5($email);
			$_SESSION['id'] = $con->lastInsertId();
			$_SESSION['img'] = $imagem;
			$mensagem = $ok;
			$con->commit();
		}		
		else
		{
			$upload = move_uploaded_file($tmp_name, $dir.$nomeImg.".".$ext);			
			if($resul && $upload)
			{
					
			
				session_start();
				$_SESSION['nome'] = $nome;
				$_SESSION['token'] = md5($email);
				$_SESSION['id'] = $con->lastInsertId();
				$_SESSION['img'] = $imagem;
				
				$mensagem = $ok;
				$con->commit();
			}
			
			else
			{
				$mensagem = $erro;
				$con->rollback();	
			}
		}
		
		retorno($mensagem);
		
	}
	
	function retorno($array)
	{
		header("Content-Type: application/json");
		echo json_encode($array);
	}
	
?>