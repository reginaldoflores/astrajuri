<?php

class ajaxController extends Controlador{
    
     public function __construct() {
        parent::__construct();
        
        $usuario = new Usuario();
        
        if (!$usuario->isLogged()) {
            header("Location: ".HOME."/login");
        }
        
    }
    
    public function index(){
        $dados = array(
            'cnpj' => '',
            'nome_fantasia' => '',
            'insc_estadual' => '',
            'insc_municipal' => '',
            'celular' => '',
            'residencial' => '',
            'comercial' => '',
            'uf' => '',
            'cep' => '',
            'logradouro' => '',
            'numero' => '',
            'cidade' => '',
            'bairro' => '',
            'complemento' => '',
            'cpf' => '',
            'nome' => '',
            'data_nasc' => '',
            'cnh' => '',
            'titulo_de_eleitor' => '',
            'rg' => '',
            'email' => '',
            'erro' => false
        );

        $c = new Cliente();
        
        if (isset($_POST['pessoa']) && !empty($_POST['pessoa'])) {
            $pessoa = addslashes($_POST['pessoa']);
            
            $brasil = array();
            
            if ($c->validar_cnpj($pessoa) && (strlen($pessoa) == 14)) {
                $brasil = $c->getPessoaJuridicaByCNPJ($pessoa);
                                
                $dados['cnpj'] = $brasil['CNPJ'];
                $dados['nome_fantasia'] = $brasil['Nome_Fantasia'];
                $dados['insc_estadual'] = $brasil['Insc_Estadual'];
                $dados['insc_municipal'] = $brasil['Insc_Municipal'];
                
            }elseif(($c->validaCPF($pessoa)) && (strlen($pessoa) == 11)){
                $brasil = $c->getPessoaFisicaByCPF($pessoa);
                
                $dados['cpf'] = $brasil['CPF'];
                $dados['nome'] = $brasil['Nome'];
                $dados['data_nasc'] = $brasil['Data_Nasc'];
                $dados['cnh'] = $brasil['CNH'];
                $dados['titulo_de_eleitor'] = $brasil['Titulo_de_Eleitor'];
                $dados['rg'] = $brasil['RG'];
            }else{
                $dados['erro'] = true;
                echo json_encode($dados);exit;
            }
                $dados['celular'] = $brasil['telefone']['Celular'];
                $dados['residencial'] = $brasil['telefone']['Residencial'];
                $dados['comercial'] = $brasil['telefone']['Comercial'];
                $dados['uf'] = $brasil['endereco']['UF'];
                $dados['cep'] = $brasil['endereco']['CEP'];
                $dados['logradouro'] = $brasil['endereco']['Logradouro'];
                $dados['numero'] = $brasil['endereco']['Numero'];
                $dados['cidade'] = $brasil['endereco']['Cidade'];
                $dados['bairro'] = $brasil['endereco']['Bairro'];
                $dados['complemento'] = $brasil['endereco']['Complemento'];
                $dados['email'] = $brasil['email'];
        }
        
        echo json_encode($dados);
        exit;
    }
    
    
}
