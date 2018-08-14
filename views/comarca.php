<div class="right_col" role="main">
		
			
            <div class="clearfix"></div>

 
			
		<div class="row">
						<div class="col-sm-3">
							
							<div class="input-group h2">
								<input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Comarca">
								<span class="input-group-btn">
									<button class="btn btn-primary" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
							
						</div>
						
						<div class="col-sm-3">
                                                    <a href="<?= HOME; ?>/comarca/add" class="btn btn-primary btn-xs pull-right h2">Nova Comarca</a>
						</div>
						
			</div> 
				
			<div class="row">
					  <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
						  <div class="x_title">
							<h2>Lista Comarcas</h2>
							<div class="clearfix"></div>
						  </div>
						  <div class="x_content">
						
							<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>Comarca</th>
							<th>Endereço</th>
							<th class="actions">Ações</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Niterói</td>
							<td>
							<p>Visconde de Sepetiba 519 9º andar, Niterói - Rio de Janeiro</p>
							</td>
							<td class="actions">
								<a class="btn btn-success btn-xs" href="view.html">Visualizar</a>
								<a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
								<a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
							</td>
						</tr>
						
					</tbody>
					</table>
						  </div>
						</div>
					  </div>
			</div>

			
					
		</div> <!-- /#main -->
			
			
			

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
    <script src="<?= HOME; ?>/assets/bootstrap/js/custom.min.js"></script>
	 <!-- Dropzone.js -->
    <script src="<?= HOME; ?>/assets/bootstrap/dropzone/dist/min/dropzone.min.js"></script>
	
  </body>
</html>