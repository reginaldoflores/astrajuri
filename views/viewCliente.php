<div class="right_col" role="main">
		
			<div class="">
				<div class="page-title">
				  <div class="title_left">
					<h3>Dados do Cliente </h3>
				  </div>
				</div>
			</div>
		
			
            <div class="clearfix"></div>
			
			<div id="main" class="container-fluid" style="margin-top: 50px">
 
				<hr/>        

				<div class="row">
					<div class="col-md-12">
					  <p><strong>Nome</strong></p>
                                          <p><?= utf8_encode($cliente['Nome']); ?></p>

					  <p><strong>CPF</strong></p>
					  <p><?= $cliente['cpf']; ?></p>
					
					  <p><strong>Data de Nascimento</strong></p>
                                          <p><?= date('d/m/Y', strtotime($cliente['nascimento'])); ?></p>
					</div>
					
				 </div>
				 
				 <hr />
				 <div id="actions" class="row">
				   <div class="col-md-12">
                                       <a href="<?= HOME; ?>/clientes" class="btn btn-primary">Fechar</a>
                                       <a href="<?= HOME; ?>/clientes/edit/<?= $cliente['idContato']; ?>" class="btn btn-default">Editar</a>
					 <a href="<?= HOME; ?>/clientes/del/<?= $cliente['idContato']; ?>" class="btn btn-default" data-toggle="modal" data-target="#delete-modal">Excluir</a>
				   </div>
				 </div>
			</div>
		</div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
  </body>
</html>