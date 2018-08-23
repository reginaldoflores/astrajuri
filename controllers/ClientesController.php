<?php

class ClientesController extends Controlador{

    public function __construct() {
        parent::__construct();
        
        $usuario = new Usuario();
        
        if (!$usuario->isLogged()) {
            header("Location: ".HOME."/login");
        }
        
    }
    
    public function index(){
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//

        $cliente = new Cliente();
                
//        if (isset($_POST['situacao']) && !empty($_POST['situacao'])) {
//            $situacao = addslashes($_POST['situacao']);
//            
//            
//                $cpf_cnpj = preg_replace("/[^0-9]/", "", addslashes($_POST['cpf_cnpf']));
//                
//                echo $cpf_cnpj;exit;
//                $nome = utf8_decode(addslashes($_POST['nome']));
//                $email = addslashes($_POST['email']);
//                                
//                $telefone = preg_replace("/[^0-9]/", "", addslashes($_POST['tel']));
//                $celular = preg_replace("/[^0-9]/", "", addslashes($_POST['celular']));
//                
//                $rg = preg_replace("/[^0-9]/", "", addslashes($_POST['rg']));
//                $cnh = addslashes($_POST['cnh']);
//                $titulo_de_eleitor = addslashes($_POST['titulo_de_eleitor']);
//                $data_nasc = addslashes($_POST['data_nasc']);
//                
//                $insc_municipal = addslashes($_POST['insc_municipal']);
//                $insc_estadual = preg_replace("/[^0-9]/", "", addslashes($_POST['insc_estadual']));
//                
//                $cep = preg_replace("/[^0-9]/", "", addslashes($_POST['cep']));
//                $logradouro = utf8_decode(addslashes($_POST['logradouro']));
//                $numero = addslashes($_POST['numero']);
//                $bairro = utf8_decode(addslashes($_POST['bairro']));
//                $complemento = utf8_decode(addslashes($_POST['complemento']));
//                $cidade = utf8_decode(addslashes($_POST['cidade']));
//                $estado = addslashes($_POST['estado']);
//                
//                    if (isset($_POST['excluir']) && !empty($_POST['excluir'])) {
//
//                        if (strlen($cpf_cnpj) == 11) {
//                            $cliente->deletePessoaFisica($cpf_cnpj);
//                        }elseif (strlen($cpf_cnpj) == 14) {
//                            $cliente->deletePessoaJuridica($cpf_cnpj);
//                        }
//                        header("Location: ".HOME."/clientes");
//                    }           
//                
//                
//            if ($situacao == "add") {
//                    
//                if ((isset($cpf_cnpj) && !empty($cpf_cnpj)) && strlen($cpf_cnpj) == 11) {
//                    $cliente->addPessoaFisica($cep, $logradouro, $numero, $bairro, $complemento, $cidade, $estado, $email, $telefone, $celular, $nome, $rg, $cnh, $titulo_de_eleitor, $data_nasc, $cpf_cnpj);
//                }elseif ((isset($cpf_cnpj) && !empty($cpf_cnpj)) && strlen($cpf_cnpj) == 14) {
//                    $cliente->addPessoaJuridica($cep, $logradouro, $numero, $bairro, $complemento, $cidade, $estado, $email, $telefone, $celular, $nome, $insc_municipal, $insc_estadual, $cpf_cnpj);
//                }
//                
//            }elseif ($situacao == "update") {
//                
//                if ((isset($cpf_cnpj) && !empty($cpf_cnpj)) && strlen($cpf_cnpj) == 11) {
//                    $cliente->updatePessoaFisica($cep, $logradouro, $numero, $bairro, $complemento, $cidade, $estado, $email, $telefone, $celular, $nome, $rg, $cnh, $titulo_de_eleitor, $data_nasc, $cpf_cnpj);
//                }elseif ((isset($cpf_cnpj) && !empty($cpf_cnpj)) && strlen($cpf_cnpj) == 14){
//                    $cliente->updatePessoaJuridica($cep, $logradouro, $numero, $bairro, $complemento, $cidade, $estado, $email, $telefone, $celular, $nome, $insc_municipal, $insc_estadual, $cpf_cnpj);
//                }
//                
//            }else{
//                $dados['error'] = "Não Existe!";
//            }
//            
//        }
        
        
        $this->loadTemplate("clientes_teste", $dados);
    }

    public function add() {
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $cliente = new Cliente();
        
        if (isset($_POST['nome']) && !empty($_POST['nome'])) {

            $nome = utf8_decode(addslashes($_POST['nome']));
            $tipo = addslashes($_POST['tipo']);
            $email = addslashes($_POST['email']);
            $confirm_email = addslashes($_POST['confirm_email']);
            $phone = addslashes($_POST['phone']);
            $cp = addslashes($_POST['cp']);
            $rg = addslashes($_POST['rg']);
            $dataNascimento = addslashes($_POST['dataNascimento']);
            $nameRua = addslashes($_POST['nameRua']);
            $cep = addslashes($_POST['cep']);
            $number = addslashes($_POST['number']);
            $bairro = utf8_decode(addslashes($_POST['bairro']));
            $cidade = utf8_decode(addslashes($_POST['cidade']));
            $uf = addslashes($_POST['uf']);
            $comp = utf8_decode(addslashes($_POST['complement']));
            
            if ($email == $confirm_email) {
                $cliente->addCliente($tipo, $nome, $email, $phone, $cp, $rg, $dataNascimento, $nameRua, $cep, $number, $bairro, $cidade, $uf, $comp);
                header("Location: ".HOME."/clientes");
            }else{
                $dados['erro'] = "E-mails diferentes!!!";
            }
            
        }
        $dados['estados'] = $cliente->getEstados();
        
        $this->loadTemplate("addCliente", $dados);
    }
    
    public function view($id) {
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $cliente = new Cliente();
        
        $dados['cliente'] = $cliente->getClienteById($id);
        
        $this->loadTemplate("viewCliente", $dados);
    }
    
    public function edit($id) {
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $cliente = new Cliente();
        
        if (isset($_POST['nome']) && !empty($_POST['nome'])) {
            $nome = utf8_decode(addslashes($_POST['nome']));
            $tipo = addslashes($_POST['tipo']);
            $email = addslashes($_POST['email']);
            $confirm_email = addslashes($_POST['confirm_email']);
            $phone = addslashes($_POST['phone']);
            $cp = addslashes($_POST['cp']);
            $dataNascimento = addslashes($_POST['dataNascimento']);
            $nameRua = addslashes($_POST['nameRua']);
            $number = addslashes($_POST['number']);
            $bairro = utf8_decode(addslashes($_POST['bairro']));
            $cidade = utf8_decode(addslashes($_POST['cidade']));
            $uf = addslashes($_POST['uf']);
            $comp = utf8_decode(addslashes($_POST['complement']));
            
            if ($email == $confirm_email) {
                $cliente->updateCliente($nome, $tipo, $email, $phone, $cp, $dataNascimento, $nameRua, $number, $bairro, $cidade, $uf, $comp, $id);
                header("Location: ".HOME."/clientes");
            }else{
                $dados['erro'] = "E-mails diferentes!!!";
            }
        }
        
        $dados['cliente'] = $cliente->getFullClienteById($id);
        $dados['estados'] = $cliente->getEstados();
        
        $this->loadTemplate("editCliente", $dados);
    }
    
    public function del($cpf_cnpj) {
        $cliente  = new Cliente();
        
        print_r($_POST);exit;
        
        if (isset($_POST['cpf_cnpf']) && !empty($_POST['cpf_cnpf'])) {
            $cpf_cnpj = addslashes($_POST['cpf_cnpf']);
            
            if (strlen($cpf_cnpj) == 11) {
                $cliente->deletePessoaFisica($cpf_cnpj);
            }elseif (strlen($cpf_cnpj) == 14) {
                $cliente->deletePessoaJuridica($cpf_cnpj);
            }
        }
        
    }
    
}