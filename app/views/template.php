<?php 
	header('Content-type: text/html; charset=ISO-8859-1');
?>

<!DOCTYPE html>

<html lang="pt-br" />
  <head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <title>GEBI 2015175 | <?php echo $title; ?></title>

    
    <link href="app/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="app/assets/css/style.css" rel="stylesheet" />
	
	<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css' />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div id="preloader">
		<img src="app/assets/img/preloader.gif" alt="" title="" />
	</div>
	
	<div class="container" id="site">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/">GEBI2015175</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="/">Home</a></li>
						<li><a href='/quemsomos'>Quem Somos</a></li>
					
					</ul>
					<div id="navbar" class="navbar-right">
						<form class="navbar-form">
							<div class="form-group">
								<input placeholder="Email" class="form-control" type="text">
							</div>
							<div class="form-group">
								<input placeholder="Password" class="form-control" type="password">
							</div>
							<button type="submit" class="btn btn-success">Entrar</button>
							<a class="btn btn-primary" href="/cadastrouser">Cadastro</a>
						</form>
						
					</div>
				</div><!--/.nav-collapse -->
			</div>
		</nav>
		<br/>
		<br/>
		<br/>

		<?php require $url; ?>
	</div>

    
    <script src="app/assets/js/jquery.min.js"></script>
	<script src="app/assets/js/jquery.validate.min.js"></script>
	<script src="app/assets/js/bootstrap.min.js"></script>
	<script src="app/assets/js/scripts.js"></script>
	<script src="app/assets/js/init.js"></script>
    
    
  </body>
</html>