<?php

 class ProcessofullController extends Controlador{
    
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
        $vara = new Vara();

        
        if (isset($_POST['numero']) && !empty($_POST['numero'])) {
                        
            $numero = preg_replace("/[^0-9]/", "", addslashes($_POST['numero']));
            $posicao = addslashes($_POST['posicao']);
            $clienteNome = utf8_decode(addslashes($_POST['cliente']));
            $pessoa2 = utf8_decode(addslashes($_POST['pessoa2']));
            $idAdvogado = addslashes($_POST['idAdv']);
            $advogado2 = utf8_decode(addslashes($_POST['advogado2']));
            $juiz = utf8_decode(addslashes($_POST['juiz']));
            $var = utf8_decode(addslashes($_POST['varaLista']));
            $fase = addslashes($_POST['fase']);
            if (isset($_POST['conclusao']) && !empty($_POST['conclusao'])) {
                $conclusao = addslashes($_POST['conclusao']);
            }else{
                $conclusao = 0;
            }
            
            $situacao = addslashes($_POST['situacao']);
            
            $va = $vara->getVaraByNome($var);
            $idVara = $va['idVara'];
            
            $cli = $processo->getClienteByNome($clienteNome);
            $idCliente = $cli['Contato_idContato'];
            
            if (isset($situacao) && !empty($situacao)) {
                if ($situacao == "add") {
                    $processo->addProcesso($numero, $juiz, $idAdvogado, $advogado2, $idCliente, $pessoa2, $fase, $idVara, $posicao);
                    header("Location: ".HOME."/processofull");
                }elseif ($situacao == "update") {
                    if (isset($_POST['idProc']) && !empty($_POST['idProc'])) {
                        $idProcesso = addslashes($_POST['idProc']);
                        $processo->editProcesso($numero, $juiz, $idAdvogado, $advogado2, $idCliente, $pessoa2, $fase, $idVara, $posicao, $conclusao, $idProcesso);
                        header("Location: ".HOME."/processofull");
                        
                    }
                    
                }
            }
            
        }
        
        $dados['clientes'] = $cliente->getClientesFull();
        $dados['conclusoes'] = $processo->getConclusoes();
        $dados['advogados'] = $processo->getAdvogadosFull();
        $dados['instancias'] = $processo->getInstancias();
        $dados['comarcas'] = $comarca->getComarcas();
        $dados['fases'] = $processo->getFases();
        $dados['posicoes'] = $processo->getPosicoes();
        
        
        $this->loadTemplate("processos", $dados);
    }
    
    public function del($idProcesso) {
        $processo = new Processo();
        $processo->delProcesso($idProcesso);
        header("Location: ".HOME."/processofull");
    }
    
 }
//teste 