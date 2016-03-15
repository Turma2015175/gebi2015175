<!DOCTYPE html>
<html lang="pt-br" />
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <title>Sistema 2015175 | <?php echo $title; ?></title>

    
    <link href="app/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="app/assets/css/estilos.css" rel="stylesheet" />
	
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
		<img src="app/assets/images/carregando.gif" alt="" title="" />
	</div>
	
	<div class="container" id="site">
		<?php require $url; ?>
	</div>

    
    <script src="app/assets/js/jquery.min.js"></script>
	<script src="app/assets/js/jquery.validate.min.js"></script>
	<script src="app/assets/js/scripts.js"></script>
	<script src="app/assets/js/init.js"></script>
    
    
  </body>
</html>