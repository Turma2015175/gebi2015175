<?php
	
	
	// localhost //
	$dsn 	= "mysql:dbname=scrinia; host=localhost";
	$user 	= "root";
	$pass	= "";
	
	// Servidor //
	//$dsn 	= "mysql:dbname=u935071429_scrin; host=mysql.hostinger.com.br";
	//$user 	= "u935071429_scrin";
	//$pass	= "ty7c8j89";

	// Está armazenando a conexão dsn,user,pass 
	$con = new PDO($dsn, $user, $pass);
	
	/*
	//TESTE DE CONEXAO CASO ALGUEM PRECISE!!
	
	if(!$con)
	{
		echo "Erro! <br/>";
	}
	else
	{
		// Se conectou posso fazer uma busca por dados.
		echo "Conectou!!! <br/>";	
	}
	*/
	
?>





