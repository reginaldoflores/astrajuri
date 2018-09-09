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
            $instancia = addslashes($_POST['instancia']);
            $posicao = addslashes($_POST['posicao']);
            $clienteNome = utf8_decode(addslashes($_POST['listaCliente']));
            $pessoa2 = utf8_decode(addslashes($_POST['pessoa2']));
            $idAdvogado = addslashes($_POST['idAdv']);
            $advogado2 = utf8_decode(addslashes($_POST['advogado2']));
            $juiz = utf8_decode(addslashes($_POST['juiz']));
            $var = utf8_decode(addslashes($_POST['varaLista']));
            $fase = addslashes($_POST['fase']);
            $conclusao = addslashes($_POST['conclusao']);
            $situacao = addslashes($_POST['situacao']);
            
            $va = $vara->getVaraByNome($var);
            $idVara = $va['idVara'];
            
            $idCliente = $processo->getClienteByNome($clienteNome);
            print_r($idCliente);exit;
            $idCliente = $idCliente['Contato_idContato'];
            
            if (isset($situacao) && !empty($situacao)) {
                if ($situacao == "add") {
//                    $processo->addProcesso($num, $juiz, $adv, $adv2, $cliente, $pessoa2, $fase, $vara, $posicao);
                    $processo->addProcesso($numero, $juiz, $idAdvogado, $advogado2, $idCliente, $pessoa2, $fase, $idVara, $posicao);
                    header("Location: ".HOME."/processofull");
                }elseif ($situacao == "update") {
                    
                }
            }
            
        }
        
        $dados['clientes'] = $cliente->getClientesFull();
        $dados['advogados'] = $processo->getAdvogadosFull();
        $dados['instancias'] = $processo->getInstancias();
        $dados['comarcas'] = $comarca->getComarcas();
        $dados['fases'] = $processo->getFases();
        $dados['posicoes'] = $processo->getPosicoes();
        
        
        $this->loadTemplate("processos", $dados);
    }
    
 }
//teste 
