<div class="right_col" role="main">
<div class="clearfix"></div>

    <div id="main" class="container-fluid">
        <form method="post" class="form-horizontal form-label-left" novalidate>
            <div class="row">
                
                <!-- Processo -->
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        
                        <div class="x_title">
                            <h2>Processo</h2>
                            <div class="clearfix"></div>
                        </div>
                        
                        <div class="x_content">
                        <div class="erro">Número Inválido</div>
                        
                        <!--<div class="alert alert-danger" role="alert">CPF ou CNPJ Inválido</div>
                        <div class="alert alert-success" role="alert">Cadastrado com Sucesso</div>-->

                            <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="x_content">

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="numero">Número: * </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="numero" type="text" name="numero" size="20"  class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>

                                        <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="instancia">Instância: </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12"> 
                                            <select id="instancia" name="instancia" class="form-control col-md-7 col-xs-12">
                                                <?php foreach($instancias as $instancia): ?>
                                                <option value="<?= $instancia['idInstancia']; ?>"><?= utf8_encode($instancia['Nome']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                        </div>

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="posicao">Posição do Cliente: </label>
                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                <select id="posicao" name="posicao" class="form-control col-md-7 col-xs-12">
                                                    <?php foreach($posicoes as $posicao): ?>
                                                    <option value="<?= $posicao['idPosicao']; ?>"><?= utf8_encode($posicao['Posicao']); ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cliente">Cliente:  </label>
                                            <div class="col-md-9 col-sm-6 col-xs-12">
                                                <input type="text" id="cliente" list="listaCliente" name="cliente" class="form-control col-md-7 col-xs-12">
                                                <datalist id="listaCliente">
                                                    <?php foreach($clientes as $cliente): ?>
                                                        <option value="<?= utf8_encode($cliente['Nome']); ?>"><?= $cliente['CPF']; ?></option>
                                                        <input type="hidden" name="idCli" id="idCli" value="<?= $cliente['idContato']; ?>" />
                                                    <?php endforeach; ?>
                                                </datalist>
                                            </div>
                                        </div>

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pessoa2"><span id="tela1">Autor:</span><span style="display: none;" id="tela2">Réu:</span><span style="display: none;" id="tela3">Requerido:</span><span style="display: none;" id="tela4">Requerente:</span></label>
                                            <div class="col-md-9 col-sm-6 col-xs-12">
                                                <input type="text" id="pessoa2" name="pessoa2"   class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="advogado">Advogado (Func): </label>
                                            <div class="col-md-9 col-sm-6 col-xs-12">
                                                <input type="text" id="advogado" list="listaAdvogado" name="advogado" class="form-control col-md-7 col-xs-12">
                                                <datalist id="listaAdvogado">
                                                    <?php foreach($advogados as $advogado): ?>
                                                        <option value="<?= utf8_encode($advogado['nome']); ?>"><?= $advogado['OAB']; ?></option>
                                                        <input type="hidden" name="idAdv" id="idAdv" value="<?= $advogado['idAdvogado']; ?>" />
                                                    <?php endforeach; ?>
                                                </datalist>
                                            </div>
                                        </div>
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="advogado2">Advogado: </label>
                                            <div class="col-md-7 col-sm-6 col-xs-12">
                                                    <input type="text" id="advogado2" name="advogado2" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>

                                    </div>
                            </div>
                           
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="x_content">

                                    <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="juiz">Juiz: </label>
                                            <div class="col-md-7 col-sm-6 col-xs-12">
                                                    <input type="text" id="juiz" name="juiz" class="form-control col-md-7 col-xs-12">
                                            </div>
                                    </div>

                                    

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="comarca">Comarca: </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12"> 
                                            <input type="text" id="comarca" name="comarca" list="listacomarca" class="form-control col-md-7 col-xs-12">
                                            <datalist id="listacomarca">
                                                <?php foreach($comarcas as $comarca): ?>
                                                <option value="<?= utf8_encode($comarca['Nome']) ?>"><?= utf8_encode($comarca['Nome']); ?></option>
                                                <?php endforeach; ?>
                                            </datalist>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="end">Endereço:  </label>
                                            <div class="col-md-9 col-sm-7 col-xs-6">
                                                    <input type="text" id="end" name="end"  class="form-control col-md-7 col-xs-12">
                                            </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="varaLista">Vara: </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12"> 
                                            <input type="text" id="varaLista" name="varaLista" list="listavara" class="form-control col-md-7 col-xs-12">
                                            <datalist id="listavara">
                                            </datalist>
                                            <span id="comRel"></span>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fase">Fase: </label>
                                        <div class="col-md-5 col-sm-3 col-xs-12">
                                            <select id="fase" name="fase" class="form-control col-md-7 col-xs-12">
                                                <?php foreach($fases as $fase): ?>
                                                <option id="optFase" value="<?= $fase['idStatus']; ?>"><?= utf8_encode($fase['Status']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="item form-group" id="exibeConclusao" style="display: none;">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="conclusao">Conclusão: </label>
                                        <div class="col-md-5 col-sm-3 col-xs-12">
                                            <select name="conclusao" id="conclusao" class="form-control col-md-7 col-xs-12">
                                                <?php foreach($conclusoes as $conclusao): ?>
                                                <option value="<?= $conclusao['idConclusao']; ?>"><?= utf8_encode($conclusao['Nome']); ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- / Processo -->

                
                <!-- Valor-->
                <div class="col-md-12 col-sm-12 col-xs-12"> 
                    <div class="x_panel">
                        
                        <div class="nav">
                             <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#valor">Incluir Valor</button>
                        </div>   
                        <hr>
                        <div class="x_content">
                            <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Valor</th>
                                    <th>Tipo</th>
                                    <th>Notas</th>
                                    <th class="actions">Ações</th>                        
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01/01/2010</td>
                                    <td>2000,00</td>
                                    <td>Contratual</td>
                                    <td>Valor decidido após reunião com o cliente</td>
                                    
                                    <td class="actions">
                                            <!-- <a class="btn btn-success btn-xs" href="view.html">Visualizar</a> -->
                                            <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
                                            <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- / Valor-->
               
                <!-- Andamento -->
                <div class="col-md-12 col-sm-12 col-xs-12">    
                    <div class="x_panel">
                        
                        <div class="nav">
                             <button type="button" class="btn btn-primary btn-xs" data-toggle="modal"  data-target="#and">Incluir Andamento</button>
                        </div>   
                        <hr>
                        <div class="x_content">

                            <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Texto</th>
                                    <th class="actions">Ações</th>                     
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01/01/2010</td>
                                    <td>
                                    <p>Juntada - Petição</p>
                                    <p>Data da juntada: 17/10/2012</p>
                                    <p>Número do Documento: 201205337129 - Prog Comarca de Niterói</p>
                                    </td>
                                    <td class="actions">
                                            <!-- <a class="btn btn-success btn-xs" href="view.html">Visualizar</a> -->
                                            <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
                                            <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>01/01/2010</td>
                                    <td>
                                    <p>Juntada - Petição</p>
                                    <p>Data da juntada: 17/10/2012</p>
                                    <p>Número do Documento: 201205337129 - Prog Comarca de Niterói</p>
                                    </td>
                                    <td class="actions">
                                            <!-- <a class="btn btn-success btn-xs" href="view.html">Visualizar</a> -->
                                            <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
                                            <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>
                            </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                <!-- / Andamento -->
                
                <!-- Arquivo-->
                <div class="col-md-12 col-sm-12 col-xs-12">    
                    <div class="x_panel">
                        
                        <div class="nav">
                             <button type="button" class="btn btn-primary btn-xs" data-toggle="modal"  data-target="#arq">Incluir Arquivo</button>
                        </div>   
                        <hr>
                        <div class="x_content">

                            <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Arquivo</th>
                                    <th>Descrição</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01/01/2010</td>
                                    <td>arquivo</td>
                                    <td>Cópia do contrato</td>

                                    <td class="actions">
                                        <!-- <a class="btn btn-success btn-xs" href="view.html">Visualizar</a> -->
                                        <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
                                        <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>04/01/2017</td>
                                    <td>arquivo</td>
                                    <td>Cópia dos documentos pessoais do cliente</td>

                                    <td class="actions">
                                        <!-- <a class="btn btn-success btn-xs" href="view.html">Visualizar</a> -->
                                        <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
                                        <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                                    </td>
                                </tr>
                            </tbody>
                            </table>
                            
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-12 col-md-offset-5">
                                    
                                    <button id="send" type="submit" class="btn btn-primary">Salvar</button>
                                    <button type="reset" class="btn btn-default">Cancelar</button>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                 <!-- / Arquivo-->
            
            </div>
            <input type="hidden" id="situacao" name="situacao" value="add">
        </form>
    </div>
      
</div>  

    <!--modal Andamento-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" id="and" role="dialog" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="gridSystemModalLabel">Incluir Andamento</h4>
            </div>
            <div class="modal-body">
          
                <div class="row">
            
                    <div class="col-md-12">
            
                        <div class="form-group">
                        <label class="control-label col-md-6 col-sm-6 col-xs-12">Data: </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <input type="date" id="data" name="data"  class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                
                        <br><br><br>
                        
                        <div class="form-group">
                            <label class="control-label col-md-6 col-sm-6 col-xs-12">Texto: </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                              <textarea class="resizable_textarea form-control" placeholder="Digite o andamento..."></textarea>
                            </div>
                        </div>
                
                    </div>
                </div>
          
                <br><br>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                  <button type="button" class="btn btn-primary">Salvar</button>
                </div>
            
            </div>
        </div>
    </div>

</div>

    
    <!--modal valor-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" id="valor" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">Incluir Valor</h4>
                </div>
                <div class="modal-body">

                    <div class="row">

                        <div class="col-md-12">

                            <div class="form-group">
                            <label class="control-label col-md-6 col-sm-6 col-xs-12">Tipo: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="data" name="data"  class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <br><br><br>

                            <div class="form-group">
                            <label class="control-label col-md-6 col-sm-6 col-xs-12">Data: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="date" id="data" name="data"  class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>

                            <br><br><br>

                            <div class="item form-group">
                                <label class="control-label col-md-6 col-sm-6 col-xs-12" for="com">Valor: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">R$</span>
                                        <input type="text"  id="com" name="com" class="form-control" aria-label="Amount (to the nearest dollar)">      
                                    </div>
                                </div>
                            </div>

                            <br><br><br>

                            <div class="form-group">
                                <label class="control-label col-md-6 col-sm-6 col-xs-12">Notas: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                  <textarea class="resizable_textarea form-control" placeholder="Digite notas..."></textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                    <br><br>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                      <button type="button" class="btn btn-primary">Salvar</button>
                    </div>

                </div>
                
            </div>
        </div>
    </div>
    
    <!--modal arquivo-->
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" id="arq" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
            
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">Incluir Arquivo</h4>
                </div>
                <div class="modal-body">

                    <div class="row">

                        <div class="col-md-12">

                            <div class="form-group">
                            <label class="control-label col-md-6 col-sm-6 col-xs-12">Data: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="data" name="data"  class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <br><br><br>
                            <div class="form-group">
                            <label class="control-label col-md-6 col-sm-6 col-xs-12">Arquivo: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="file" id="arquivo" name="arquivo">
                                </div>
                            </div>
                            <br><br><br>
                            <div class="form-group">
                                <label class="control-label col-md-6 col-sm-6 col-xs-12">Descrição: </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                  <textarea class="resizable_textarea form-control" placeholder="Digite a descrição..."></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br><br>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                      <button type="button" class="btn btn-primary">Salvar</button>
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

<script src="<?= HOME; ?>/assets/js/jquery.mask.min.js"></script>

<script>
    
    
    $(document).ready(function(){                        
        $('#numero').mask('0000000-00.0000.0.00.0000');
    });
    
    $("#comarca").on("change", function(){
        var comar = $("#comarca").val();
                    
        $.ajax({
            url:'http://localhost/astrajuri/ajax/getVara',
            type: 'POST',
            data:{comar:comar},
            dataType: 'json',
            success:function(json){
  
                if (json.erro === false) {
               
                    $("#end").val(json.endereco);
               
                    $("#listavara").remove();
                    $("#comRel").append('<datalist id="listavara"></datalist>');
               
                    for (var i = 0; i < json.vara.length; i++) {
                        $("#listavara").append('<option id="comarcasRelacionadas" value="'+json.vara[i]+'"> ' + json.vara[i] + '</option>');
                    }
                    
                }else{
                    $(".erro").css('display', 'block');
                }
            }
        });
    });
    
    $("#fase").on("change", function(){
        
        var fase = $("#fase option:selected").val();
                
        if (fase == 7) {
            $("#exibeConclusao").css('display', 'block');
        }
        
    });
    
    $("#posicao").on("change", function(){
        
        var fase = $("#posicao option:selected").val();
                
        if (fase == 1) {
            $("#tela1").css('display', 'block');
            $("#tela2").css('display', 'none');
            $("#tela3").css('display', 'none');
            $("#tela4").css('display', 'none');
        }else if (fase == 2){
            $("#tela1").css('display', 'none');
            $("#tela2").css('display', 'block');
            $("#tela3").css('display', 'none');
            $("#tela4").css('display', 'none');
        }else if (fase == 3){
            $("#tela1").css('display', 'none');
            $("#tela2").css('display', 'none');
            $("#tela3").css('display', 'block');
            $("#tela4").css('display', 'none');
        }else if (fase == 4){
            $("#tela1").css('display', 'none');
            $("#tela2").css('display', 'none');
            $("#tela3").css('display', 'none');
            $("#tela4").css('display', 'block');
        }
        
    });
</script>