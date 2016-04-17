<?php header('Content-Type: text/html; charset=utf-8');?>

<!DOCTYPE html>

<html lang="pt-br" >
  <head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<link rel="shortcut icon" href="app/assets/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="app/assets/img/favicon.ico" type="image/x-icon">
   
    <title> Scrinia <?php echo $title = "" ?></title>

    <link href='https://fonts.googleapis.com/css?family=Arvo:400,700italic' rel='stylesheet' type='text/css'>
	<link href="app/assets/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="app/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="app/assets/css/datepicker.css">
	<link href="app/assets/css/style.css" rel="stylesheet" />
	
	<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<script src="app/assets/js/jquery.min.js"></script>
	<script src="app/assets/js/jquery.validate.min.js"></script>
	<script src="app/assets/js/bootstrap.min.js"></script>
	<script src="app/assets/js/bootstrap-datepicker-pt-BR.js"></script> 

  </head>
  <body>
    <div id="preloader">
		<img src="app/assets/img/preloader.gif" alt="" title="" />
	</div>
	
	<div id="site">
	<div class="col-xs-10 col-xs-offset-1">
		<header>
		
            <img class="img-responsive" src="app/assets/img/logoM.png" alt=""></span>
			<h1 title="Scrinia"></h1>
		</header>
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href=<?php
					if(!empty($_SESSION['nome'])){
						echo '"./usuarios"';
					}else{echo '"./home"';}?>
					>Home</a></li>
						
						<?php
					if(empty($_SESSION['token']) || empty($_SESSION['nome']) || empty($_SESSION['id'])){
						echo "<li><a href='./quemsomos'>Quem Somos</a></li>";
					}?>				
					</ul>
					<div id="navbar" class="navbar-right">
					<?php
					if(!empty($_SESSION['token']) || !empty($_SESSION['nome']) || !empty($_SESSION['id'])){


						echo '<form class="navbar-form"><div class="form-group"><a href="./usuarios" type="button" class="btn btn-success">'.$_SESSION['nome'].'</a></div><div class="form-group"><a class="btn btn-danger" id="logout" href="#">Sair</a></div></form>';
					}
					else{ echo "<form class='navbar-form'><div class='form-group'><a class='btn btn-success' href='./login'>Entrar</a></div><div class='form-group'><a class='btn btn-primary' href='./cadastrouser'>Cadastro</a></div></form>";
						}?>	
					</div>
				</div><!--/.nav-collapse -->
			</div>
		</nav>
		
	
		<main id="conteudo">	<!-- add para ajudar na responsividade do footer-->
			<?php require $url; ?>
		</main>
	</div>	
		<!--Este footer está configurado para estar sempre abaixo da pagina mesmo quando a página tem pouco conteudo-->
		<footer>
			<ul>
				<li><a href=<?php
					if(!empty($_SESSION['nome'])){
						echo '"./usuarios"';
					}else{echo '"./home"';}?>>Home</a> |</li>
				<li><a href="./quemsomos">Quem Somos</a>  |</li>
				<li><a href=<?php
					if(!empty($_SESSION['nome'])){
						echo '"./usuarios"';
					}else{echo '"./login"';}?>>Login</a>  |</li>
				<li><a href=<?php
					if(!empty($_SESSION['nome'])){
						echo '"./usuarios"';
					}else{echo '"./cadastrouser"';}?>>Cadastro</a> </li>				
			</ul>
			<p> @Copyright 2016. Todos os direitos reservados.</p> 
		</footer>
	</div>
  

	<script src="app/assets/js/scripts.js"></script>
	<script src="app/assets/js/init.js"></script>
    
    
  </body>
</html>