<?php

class ProcessosController extends Controlador{
    
    public function __construct() {
        parent::__construct();
        
        $usuario = new Usuario();
        
        if (!$usuario->isLogged()) {
            header("Location: ".HOME."/login");
        }
        $dados = $usuario->getDadosUser();
        
        if ($dados['idPerfil'] == 1) {
            header("Location: ".HOME);
        }
    }
    
    public function index(){
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $processo = new Processo();
        $comarca = new Comarca();
        $cliente = new Cliente();
        
        
        $dados['clientes'] = $cliente->getClientesFull();
        $dados['instancias'] = $processo->getInstancias();
        $dados['comarcas'] = $comarca->getComarcas();
        $dados['fases'] = $processo->getFases();
        $dados['posicoes'] = $processo->getPosicoes();
        
        
        $this->loadTemplate("processos", $dados);
    }

}
