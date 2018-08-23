<div class="right_col" role="main">
    <div class="clearfix"></div>

    <div id="main" class="container-fluid">
        <form method="post" class="form-horizontal form-label-left" novalidate>
            <form  method="post">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            
                            <div class="x_title">
                                <h2>Cliente</h2>
                                <div class="clearfix"></div>
                             </div>

                                <div class="x_content">

                                    <form method="post" class="form-horizontal form-label-left" novalidate>
                                    <div class="erro">CPF e/ou CNPJ Inválido</div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cpf">CPF  /  CNPJ: <span class="required">*</span>
                                        </label>
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <input id="cpf_cnpf" type="text" onkeyup="mascaraCPF(this)" name="cpf_cnpf" size="14" required="required" data-validate-length-range="14" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Cliente: 
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="nome" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="nome" placeholder="" required="required" type="text">
                                        </div>
                                    </div>
                                    
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email: 
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    
                                    <div id="pessoaJuridica">
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="insc_municipal">Inscrição Municipal: <span class="required">*</span>
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="insc_municipal" name="insc_municipal" size="9" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>

                                         <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="insc_estadual">Inscrição Estadual: <span class="required">*</span>
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="insc_estadual" name="insc_estadual" size="9" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="pessoaFisica">
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rg">RG <span class="required">*</span>
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="rg" name="rg" size="9" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cnh">CNH: <span class="required">*</span>
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="cnh" name="cnh" size="9" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="titulo_de_eleitor">Titulo Eleitoral: <span class="required">*</span>
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="text" id="titulo_de_eleitor" name="titulo_de_eleitor" size="9" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="data_nasc">Data Nascimento:
                                            </label>
                                            <div class="col-md-3 col-sm-6 col-xs-12">
                                                <input type="date" id="data_nasc" name="data_nasc" required="required" data-validate-length-range="8" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tel">Telefone Residencial: <span class="required"></span>
                                        </label>
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                            <input type="tel" id="tel" name="tel" pattern="\(\d{2}\)\d{4}-\d{4}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="celular">Celular: <span class="required"></span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="tel" id="celular" name="celular" pattern="\(\d{2}\)\d{4}-\d{4}" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    </br>
                                    </br>
                                        
                                    <div class="x_title">
                                        <h2>Endereço</h2>
                                        <div class="clearfix"></div>
                                    </div>
                                     
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cep">CEP <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="cep" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="cep" placeholder="Ex: 26465-569" required="required" type="text">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="logradouro">Logradouro: <span class="required"></span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="logradouro" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="logradouro" placeholder="Ex: Rua, Avenida" required="required" type="text">
                                        </div>
                                    </div>


                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-10"  for="numero">Número: 
                                        </label>
                                        <div class="col-md-3 col-sm-6 col-xs-12">
                                            <input type="text" id="numero" name="numero" class="form-control col-md-7 col-xs-12" >
                                        </div>
                                    </div>


                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Bairro: <span class="required"></span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="bairro" name="bairro" data-validate-linked="bairro" required="required" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="complemento">Complemento: 
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="complemento" name="complemento" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cidade">Cidade: <span class="required"></span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="cidade" name="cidade" size="11" required="required" data-validate-length-range="11" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                   <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="estado">Estado: <span class="required"></span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12"> 
                                            <input type="text" id="estado" name="estado" list="listaestado" required="required"class="form-control col-md-7 col-xs-12">
                                            <datalist id="listaestado">
                                                    <option value="AC">Acre</option>
                                                    <option value="AL">Alagoas</option>
                                                    <option value="AP">Amapá</option>
                                                    <option value="AM">Amazonas</option>
                                                    <option value="BA">Bahia</option>
                                                    <option value="CE">Ceará</option>
                                                    <option value="DF">Distrito Federal</option>
                                                    <option value="ES">Espírito Santo</option>
                                                    <option value="GO">Goiás</option>
                                                    <option value="MA">Maranhão</option>
                                                    <option value="MT">Mato Grosso</option>
                                                    <option value="MS">Mato Grosso do Sul</option>
                                                    <option value="MG">Minas Gerais</option>
                                                    <option value="PA">Pará</option>
                                                    <option value="PB">Paraíba</option>
                                                    <option value="PR">Paraná</option>
                                                    <option value="PE">Pernambuco</option>
                                                    <option value="PI">Piauí</option>
                                                    <option value="RJ">Rio de Janeiro</option>
                                                    <option value="RN">Rio Grande do Norte</option>
                                                    <option value="RS">Rio Grande do Sul</option>
                                                    <option value="RO">Rondônia</option>
                                                    <option value="RR">Roraima</option>
                                                    <option value="SC">Santa Catarina</option>
                                                    <option value="SP">São Paulo</option>
                                                    <option value="SE">Sergipe</option>
                                                    <option value="TO">Tocantins</option>
                                            </datalist>
                                        </div>
                                    </div>

                                     <input type="hidden" id="situacao" name="situacao" value="add">
                                     
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <button id="send" type="submit" class="btn btn-primary">Atualizar</button>
                                            <button type="reset" class="btn btn-default">Cancelar</button>
                                            <button class="btn btn-danger" id="botaoExcluir" name="excluir" value="deletar">Excluir</button>
                                        </div>
                                    </div>
                                </form>


                            </div>
                        </div>
                    </div>

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
                <script src="<?= HOME; ?>/assets/js/script.js"></script>
                <script>
                    
                    
                    $(document).ready(function(){                        
                        $('#tel').mask('(00) 0000-0000');
                        $('#celular').mask('(00) 00000-0000');
                        $('#cep').mask('00000-000');
                        $('#rg').mask('00.000.000-0');
                        $('#insc_estadual').mask('00.000.00-0');
                        
                    });
                                        
                    
                </script>

                </body>
                </html>
