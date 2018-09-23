<link href='<?= HOME; ?>/assets/cssCK/personalizado.css' rel='stylesheet' />

<div class="right_col" role="main">
    <div class="clearfix"></div>

    <div class="row">
        <div class="col-md-12">
            <div class="x_panel">
                
                <div class="x_title">
                  <h2>Agenda</h2>
                  <div class="clearfix"></div>
                </div>

                <div class="x_content">
                   
			<?php
			if(isset($_SESSION['msg'])){
				echo $_SESSION['msg'];
				unset($_SESSION['msg']);
			}
			?>
		
			<div id='calendar'></div>
                </div>
                
                
            </div>
        </div>
    </div>
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

 
    <!-- jQuery -->
    <script src="<?= HOME; ?>/assets/bootstrap/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?= HOME; ?>/assets/bootstrap/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?= HOME; ?>/assets/bootstrap/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<?= HOME; ?>/assets/bootstrap/nprogress/nprogress.js"></script>
    <!-- FullCalendar -->
    <script src="<?= HOME; ?>/assets/bootstrap/moment/min/moment.min.js"></script>
    <script src="<?= HOME; ?>/assets/bootstrap/fullcalendar/dist/fullcalendar.min.js"></script>
    
    <script src='<?= HOME; ?>/agenda/locale/pt-br.js'></script>
    
    <!-- Custom Theme Scripts -->
    <!--<script src='<?= HOME; ?>/assets/js/custom.min.js'></script>-->
    
    
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
    

    <script>
    $(document).ready(function(){
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
    });
    </script>
    
    
