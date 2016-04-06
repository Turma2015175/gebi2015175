<?php	
	session_start();
	
	function valida(){
		if(!isset($_SESSION['token']) || !isset($_SESSION['nome']) || !isset($_SESSION['id'])){
			expulsa();
		}
		if(empty($_SESSION['token']) || empty($_SESSION['nome']) || empty($_SESSION['id'])){
			expulsa();
		}
		
	}
	function expulsa(){
		unset(
			$_SESSION['nome'],
			$_SESSION['token'],
			$_SESSION['id']
		);
		session_destroy();
		header('location: ./home');
	}
	
?>