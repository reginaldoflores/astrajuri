<?php

class HomeController extends Controlador{

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
        
        $celke = new Celke();
        
        $dados['eventos'] = $celke->getTodosEventos();
        $this->loadTemplate("home", $dados);
    }

}