<div class="right_col" role="main">
		
			<div class="">
				<div class="page-title">
				  <div class="title_left">
					<h3>Processo </h3>
				  </div>
				</div>
			</div>
		
			
            <div class="clearfix"></div>

 
			<div id="top" class="row">
				<div class="col-sm-3">
					
					<div class="input-group h2">
						<input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Processo">
						<span class="input-group-btn">
							<button class="btn btn-primary" type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
					
				</div>
				<div class="col-sm-3">
					<a href="add.html" class="btn btn-primary btn-xs pull-right h2">Novo Processo</a>
				</div>
			</div> <!-- /#top -->


			
			<div class="row">
					  <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
						  <div class="x_title">
							<h2>Dados do Processo</h2>
							<div class="clearfix"></div>
						  </div>
						  <div class="x_content">
							<p><strong>Autor:</Strong> APAERJ AS.PAIS E ALUNOS (11.659)</p>
					<p><strong>Réu:</Strong> 
					CENTRO EDUCACIONAL DE NITEROI
					Advogado(s)
					RJ103025 - ROSIANA DE OLIVEIRA LEITE RJ037431 - ADELINO DE SOUZA RJ1 </p>
					
					<hr/>

					<p>
					<Strong>Número Processo:</strong>
					0002916-46.1993.8.19.0002
					</p>	
					
					<p>
					<strong>Comarca de Niterói:</strong>
					8ª Vara Cível
					</p>
					
					<p>
					<strong>Endereço:</strong>
					Visconde de Sepetiba 519 9º andar
					</p>
					
					<p>
					<strong>Bairro:</strong>
					Centro
					</p>
					
					<p>
					<strong>Cidade:</strong>
					Niterói
					</p>
					
					<p>
					<strong>UF:</strong>
					Rio de Janeiro
					</p>
						  </div>
						</div>
					  </div>
			</div>


			<div class="row">
						<div class="col-sm-3">
							
							<div class="input-group h2">
								<input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Andamento">
								<span class="input-group-btn">
									<button class="btn btn-primary" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
							
						</div>
						
						<div class="col-sm-3">
							<a href="add.html" class="btn btn-primary btn-xs pull-right h2">Novo Andamento</a>
						</div>
						
			</div> 
				
			<div class="row">
					  <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
						  <div class="x_title">
							<h2>Andamento do Processo</h2>
							<div class="clearfix"></div>
						  </div>
						  <div class="x_content">
						
							<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>Data</th>
							<th>Hora</th>
							<th>Texto</th>
							<th class="actions">Ações</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>01/01/2010</td>
							<td>8:00</td>
							<td>
							<p>Juntada - Petição</p>
							<p>Data da juntada: 17/10/2012</p>
							<p>Número do Documento: 201205337129 - Prog Comarca de Niterói</p>
							</td>
							<td class="actions">
								<a class="btn btn-success btn-xs" href="view.html">Visualizar</a>
								<a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
								<a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
							</td>
						</tr>
						<tr>
							<td>01/01/2010</td>
							<td>8:00</td>
							<td>
							<p>Juntada - Petição</p>
							<p>Data da juntada: 17/10/2012</p>
							<p>Número do Documento: 201205337129 - Prog Comarca de Niterói</p>
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
	
				
				
					<!--Adicionar Arquivos-->
			<div class="row">
					  <div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
						  <div class="x_title">
							<h2>Arquivos do processo</h2>
							<div class="clearfix"></div>
						  </div>
						  <div class="x_content">
							<p>Arraste ou clique para adicionar um arquivo.</p>
							<form action="form_upload.html" class="dropzone"></form>
							<br />
							<br />
							<br />
							<br />
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
    <script src="<?= HOME; ?>/assets/js/custom.min.js"></script>
	 <!-- Dropzone.js -->
    <script src="<?= HOME; ?>/assets/bootstrap/dropzone/dist/min/dropzone.min.js"></script>