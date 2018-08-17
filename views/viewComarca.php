<div class="right_col" role="main">
		
			<div class="">
				<div class="page-title">
				  <div class="title_left">
					<h3>Dados da Comarca </h3>
				  </div>
				</div>
			</div>
		
			
            <div class="clearfix"></div>
			
			<div id="main" class="container-fluid" style="margin-top: 50px">
 
				<hr/>        

				<div class="row">
					<div class="col-md-12">
					  <p><strong>Comarca</strong></p>
                                          <p><?= utf8_encode($comarca['Nome']); ?></p>
                                          
                                          <p><strong>Endereço</strong></p>
                                          <p><?= utf8_encode($comarca['Endereco']); ?></p>
					</div>
					
				 </div>
				 
				 <hr />
				 <div id="actions" class="row">
				   <div class="col-md-12">
                                       <a href="<?= HOME; ?>/comarca" class="btn btn-primary">Fechar</a>
                                       <a href="<?= HOME; ?>/comarca/edit/<?= $comarca['idComarca']; ?>" class="btn btn-default">Editar</a>
					 <a href="<?= HOME; ?>/comarca/del/<?= $comarca['idComarca']; ?>" class="btn btn-default" data-toggle="modal" data-target="#delete-modal">Excluir</a>
				   </div>
				 </div>
			</div>
		</div>


    <!-- Modal -->
    <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
      <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
              </div>
              <div class="modal-body">
                    Deseja realmente excluir este andamento?
              </div>
              <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Sim</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
              </div>
            </div>
      </div>
    </div>
    </div>

    <!-- jQuery -->
    <script src="<?= HOME; ?>/assets/bootstrap/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?= HOME; ?>/assets/bootstrap/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?= HOME; ?>/assets/bootstrap/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<?= HOME; ?>/assets/bootstrap/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="<?= HOME; ?>/assets/bootstrap/iCheck/icheck.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<?= HOME; ?>/assets/js/custom.min.js"></script>
	
  </body>
</html>