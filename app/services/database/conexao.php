<?php
	
	
	// localhost //
	$dsn 	= "mysql:dbname=scrinia; host=localhost";
	$user 	= "root";
	$pass	= "";
	
	// Servidor //
	//$dsn 	= "mysql:dbname=scrinia; host=mysql.hostinger.com.br";
	//$user 	= "u890064372_admin";
	//$pass	= "gebi2015175";

	$con = new PDO($dsn, $user, $pass);
	
	/*
	TESTE DE CONEXAO CASO ALGUEM PRECISE!!
	
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





