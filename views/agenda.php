<!DOCTYPE html>
<html lang="pt-br">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Astrajuri</title>
    
    <!-- Bootstrap -->
    <link href="<?= HOME; ?>/assets/bootstrap/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?= HOME; ?>/assets/bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?= HOME; ?>/assets/bootstrap/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<?= HOME; ?>/assets/bootstrap/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<?= HOME ?>/assets/css/custom.min.css" rel="stylesheet">
    <!-- Dropzone.js -->
    <link href="<?= HOME; ?>/assets/bootstrap/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
    
    <!-- FullCalendar-->
    <link href="<?= HOME; ?>/assets/bootstrap/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="<?= HOME; ?>/assets/bootstrap/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">
    
    <link href="<?= HOME ?>/assets/css/template.css" rel="stylesheet">
	
		<link href='<?= HOME; ?>/assets/cssCK/bootstrap.min.css' rel='stylesheet'>
		<link href='<?= HOME; ?>/assets/cssCK/fullcalendar.min.css' rel='stylesheet' />
		<link href='<?= HOME; ?>/assets/cssCK/fullcalendar.print.min.css' rel='stylesheet' media='print' />
		<link href='<?= HOME; ?>/assets/cssCK/personalizado.css' rel='stylesheet' />
		<script src='<?= HOME; ?>/assets/jsCK/jquery.min.js'></script>
		<script src='<?= HOME; ?>/assets/jsCK/bootstrap.min.js'></script>
		<script src='<?= HOME; ?>/assets/jsCK/moment.min.js'></script>
		<script src='<?= HOME; ?>/assets/jsCK/fullcalendar.min.js'></script>
		<script src='<?= HOME; ?>/assets/localeCK/pt-br.js'></script>
		<script>
			$(document).ready(function() {
				$('#calendar').fullCalendar({
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					defaultDate: Date(),
					navLinks: true, // can click day/week names to navigate views
					editable: true,
					eventLimit: true, // allow "more" link when too many events
					eventClick: function(event) {
						
						$('#visualizar #id').text(event.id);
						$('#visualizar #id').val(event.id);
						$('#visualizar #title').text(event.title);
						$('#visualizar #title').val(event.title);
						$('#visualizar #start').text(event.start.format('DD/MM/YYYY HH:mm:ss'));
						$('#visualizar #start').val(event.start.format('DD/MM/YYYY HH:mm:ss'));
						$('#visualizar #end').text(event.end.format('DD/MM/YYYY HH:mm:ss'));
						$('#visualizar #end').val(event.end.format('DD/MM/YYYY HH:mm:ss'));
						$('#visualizar #color').val(event.color);
						$('#visualizar').modal('show');
						return false;

					},
					
					selectable: true,
					selectHelper: true,
					select: function(start, end){
						$('#cadastrar #start').val(moment(start).format('DD/MM/YYYY HH:mm:ss'));
						$('#cadastrar #end').val(moment(end).format('DD/MM/YYYY HH:mm:ss'));
						$('#cadastrar').modal('show');						
					},
					events: [
                                            <?php foreach($eventos as $evento):?>
                                            {
                                                id: '<?= $evento['id']; ?>',
                                                title: '<?= $evento['title']; ?>',
                                                start: '<?= $evento['start'];; ?>',
                                                end: '<?= $evento['end'];; ?>',
                                                color: '<?= $evento['color']; ?>',
                                            },
                                            <?php    endforeach; ?>
					]
				});
			});
			
			//Mascara para o campo data e hora
			function DataHora(evento, objeto){
				var keypress=(window.event)?event.keyCode:evento.which;
				campo = eval (objeto);
				if (campo.value == '00/00/0000 00:00:00'){
					campo.value=""
				}
			 
				caracteres = '0123456789';
				separacao1 = '/';
				separacao2 = ' ';
				separacao3 = ':';
				conjunto1 = 2;
				conjunto2 = 5;
				conjunto3 = 10;
				conjunto4 = 13;
				conjunto5 = 16;
				if ((caracteres.search(String.fromCharCode (keypress))!=-1) && campo.value.length < (19)){
					if (campo.value.length == conjunto1 )
					campo.value = campo.value + separacao1;
					else if (campo.value.length == conjunto2)
					campo.value = campo.value + separacao1;
					else if (campo.value.length == conjunto3)
					campo.value = campo.value + separacao2;
					else if (campo.value.length == conjunto4)
					campo.value = campo.value + separacao3;
					else if (campo.value.length == conjunto5)
					campo.value = campo.value + separacao3;
				}else{
					event.returnValue = false;
				}
			}
		</script>

    
</head>
<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="<?= HOME; ?>" class="site_title"><span>Astrajuri</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                      <div class="profile_pic">
                        <img src="<?= HOME; ?>/assets/images/img.jpg" alt="..." class="img-circle profile_img">
                      </div>
                      <div class="profile_info">
                        <span>Bem Vindo,</span>
                        <h2><?= utf8_encode($viewData['dados_user']['pessoa']['Nome']); ?></h2>
                      </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br />

                    <!-- menu lateral -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <ul class="nav side-menu">

                            <li><a href="<?= HOME; ?>/home"><i class="fa fa-calendar"></i> Agenda </a></li>              
                            <li>
                            <a><i class="fa fa-file-text-o"></i> Cadastros <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                        <li><a href="<?= HOME; ?>/clientes">Cliente</a></li>
                                        <?php if($viewData['dados_user']['idPerfil'] == 3): ?>
                                            <li><a href="<?= HOME; ?>/usuarios">Usuário</a></li>
                                        <?php endif; ?>
                                        <?php if($viewData['dados_user']['idPerfil'] != 1):?>
                                            <li><a href="<?= HOME; ?>/processofull">Processo</a></li>
                                            <li><a href="<?= HOME; ?>/comarca">Comarca</a></li>
                                        <?php endif; ?>
                                        
                                </ul>
                            </li>
                            <li><a href="#.html"><i class="fa fa-money"></i> Financeiro </a></li>

                            <?php if($viewData['dados_user']['idPerfil'] == 3): ?>
                            <li><a><i class="fa fa-bar-chart-o"></i> Relatórios <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="chartjs.html">1</a></li>
                                    <li><a href="chartjs2.html">2</a></li>
                                    <li><a href="morisjs.html">3</a></li>
                                    <li><a href="echarts.html">4</a></li>
                                    <li><a href="other_charts.html">5</a></li>
                                </ul>
                            </li>
                            <?php endif; ?>

                            </ul>
                        </div>
                    </div>
                    <!-- /menu lateral -->

                    <div class="sidebar-footer hidden-small">
                      <a data-toggle="tooltip" data-placement="top" title="Configrações">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                      </a>

                        <a data-toggle="tooltip" data-placement="top" title="Sair" href="<?= HOME; ?>/login/logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                      </a>
                    </div>

                </div>
            </div>

            <div class="top_nav">
              <div class="nav_menu">
                <nav>
                  <div class="nav toggle">
                    <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                  </div>

                  <ul class="nav navbar-nav navbar-right">
                    <li class="">
                      <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="<?= HOME; ?>/assets/images/img.jpg" alt=""><?= utf8_encode($viewData['dados_user']['pessoa']['Nome']); ?>
                        <span class=" fa fa-angle-down"></span>
                      </a>
                      <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="javascript:;"> Perfil</a></li>
                        <li>
                          <a href="javascript:;">
                            <span>Configurações</span>
                          </a>
                        </li>
                        <li><a href="<?= HOME; ?>/login/logout"><i class="fa fa-sign-out pull-right"></i> Sair</a></li>
                      </ul>
                    </li>

                  </ul>
                </nav>
              </div>
            </div>
            
            
            <div class="container">
			<div class="page-header">
				<h1>Agenda</h1>
			</div>
			<?php
			if(isset($_SESSION['msg'])){
				echo $_SESSION['msg'];
				unset($_SESSION['msg']);
			}
			?>
		
			<div id='calendar'></div>
		</div>

		<div class="modal fade" id="visualizar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" data-backdrop="static">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title text-center">Dados do Evento</h4>
					</div>
					<div class="modal-body">
						<div class="visualizar">
							<dl class="dl-horizontal">
								<dt>Compromisso</dt>
								<dd id="id"></dd>
								<dt>Inicio</dt>
								<dd id="title"></dd>
								<dt>Fim</dt>
								<dd id="start"></dd>
								<dt>Comentário</dt>
								<dd id="end"></dd>
								<dt>Advogado</dt>
								<dd id="end"></dd>
								<dt>Cliente</dt>
								<dd id="end"></dd>
							</dl>
							<button class="btn btn-canc-vis btn-warning">Editar</button>
						</div>
						<div class="form">
							<form class="form-horizontal" method="POST" action="proc_edit_evento.php">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Titulo</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="title" id="title" placeholder="Titulo do Evento">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Cor</label>
									<div class="col-sm-10">
										<select name="color" class="form-control" id="color">
											<option value="">Selecione</option>			
										<option style="color:#FFD700;" value="#FFD700">Reunião</option>	
										<option style="color:#FF4500;" value="#FF4500">Audiência</option>
										<option style="color:#436EEE;" value="#436EEE">Outros</option>
										<option style="color:#8B0000;" value="#8B0000">Prazo</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Data Inicial</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="start" id="start" onKeyPress="DataHora(event, this)">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">Data Final</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="end" id="end" onKeyPress="DataHora(event, this)">
									</div>
								</div>
								<input type="hidden" class="form-control" name="id" id="id">
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="button" class="btn btn-canc-edit btn-primary">Cancelar</button>
										<button type="submit" class="btn btn-warning">Salvar Alterações</button>
									</div>
								</div>
							</form>
							
						
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="cadastrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" data-backdrop="static">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title text-center">Cadastrar Evento</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" method="POST" action="proc_cad_evento.php">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Compromisso</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="title" placeholder="Titulo do Evento">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Tipo</label>
								<div class="col-sm-10">
									<select name="color" class="form-control" id="color">
										<option value="">Selecione</option>			
										<option style="color:#FFD700;" value="#FFD700">Reunião</option>	
										<option style="color:#FF4500;" value="#FF4500">Audiência</option>
										<option style="color:#436EEE;" value="#436EEE">Outros</option>
										<option style="color:#8B0000;" value="#8B0000">Prazo</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Inicio</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="start" id="start" onKeyPress="DataHora(event, this)">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Fim</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="end" id="end" onKeyPress="DataHora(event, this)">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="col-sm-2 control-label">Advogado</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="" id="">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="col-sm-2 control-label">Cliente</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="" id="">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">Cadastrar</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			$('.btn-canc-vis').on("click", function() {
				$('.form').slideToggle();
				$('.visualizar').slideToggle();
			});
			$('.btn-canc-edit').on("click", function() {
				$('.visualizar').slideToggle();
				$('.form').slideToggle();
			});
		</script>
            </div>
          
        </div>   
    </div>
</body>
</html>
