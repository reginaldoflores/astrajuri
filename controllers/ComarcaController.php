<?php

class ComarcaController extends Controlador{
    
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
        
        $c = new Comarca();
        
        $dados['comarcas'] = $c->getComarcas();
        
        $this->loadTemplate("comarca", $dados);
    }
    
    public function add(){
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $c = new Comarca();
        
        if (isset($_POST['comarca']) && !empty($_POST['comarca'])) {
            $comarca = utf8_decode(addslashes($_POST['comarca']));
            $endereco = utf8_decode(addslashes($_POST['endereco']));
            
            $c->addComarca($comarca, $endereco);
            header("Location: ".HOME."/comarca");
        }
        
        $this->loadTemplate("addComarca", $dados);
    }
    
    public function view($id){
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $c = new Comarca();
        
        $dados['comarca'] = $c->getComarcaById($id);
        
        $this->loadTemplate("viewComarca", $dados);
    }
    
    public function edit($id){
        $dados = array();
        $usuario = new Usuario();
        $dados['dados_user'] = $usuario->getDadosUser();
        //-----------------------------------------------------------------//
        
        $c = new Comarca();
        
        if (isset($_POST['comarca']) && !empty($_POST['comarca'])) {
            $comarca = utf8_decode(addslashes($_POST['comarca']));
            $endereco = utf8_decode(addslashes($_POST['endereco']));
            
            $c->updateComarca($comarca, $endereco, $id);
            header("Location: ".HOME."/comarca");
        }
        $dados['comc'] = $c->getComarcaById($id);
        
        $this->loadTemplate("editComarca", $dados);
    }
    
    public function del($id) {
        $c = new Comarca();
        $c->deleteComarca($id);
        header("Location: ".HOME."/comarca");
    }
    
}
