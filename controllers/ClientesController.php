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
        
        $dados['clientes'] = $cliente->getClientes();
        
        $this->loadTemplate("clientes", $dados);
    }

    public function addCliente() {
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
    
}