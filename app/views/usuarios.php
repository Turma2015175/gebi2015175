<section  class ="row">
	<div class="col-xs-2 col-md-3">
    <a href="#" class="thumbnail">
      <img src="app/assets/img/usuarios/<?php echo $_SESSION['img']?>" alt="<?php echo $_SESSION['nome']?>">
    </a>
  </div>
	<div><?php echo $_SESSION['nome']?>	</div>
	<div> <?php echo $_SESSION['id']?>	</div>
	
</section>
<section>


	<h3>Livros Sugeridos</h3>
    


        <div class="col-xs-12 col-sm-9">
		<div id="LivrosSugerido" class ="row">


          
           
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<form id="buscarLivro" role="search">
				<div class="form-group">
					<label id="titulonomeLivro" for="nomeLivro">Buscar Livro</label>
					<input id="nomeLivro" type="text" class="form-control" placeholder="Buscar Livro" name="nomeLivro">
				</div>
				<button type="submit" class="btn btn-default">Buscar</button>
		</form>
          <div id = "listaDeGeneros" class="list-group">

          </div>
        </div><!--/.sidebar-offcanvas-->
      
</section>
<script src="app/assets/js/livro.js"></script>