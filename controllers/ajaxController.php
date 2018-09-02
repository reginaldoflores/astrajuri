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
            'erro' => false
        );

        $c = new Cliente();
        
        if (isset($_POST['pessoa']) && !empty($_POST['pessoa'])) {
            $pessoa = preg_replace("/[^0-9]/", "", addslashes($_POST['pessoa']));
                        
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
    
    public function usuarios() {
        $dados = array(
            'erro' => true
        );
        
        $c = new Cliente();
        
        if (isset($_POST['pessoa']) && !empty($_POST['pessoa'])) {
            $cpf = preg_replace("/[^0-9]/", "", addslashes($_POST['pessoa']));
                        
            $usuario = new Usuario();
            
            $users = array();
            
            if ($c->validaCPF($cpf)) {
                $users['pessoa_fisica']     = $usuario->getPessoaByCPF($cpf);
                $users['usuario']           = $usuario->getUsuarioByIdPF($users['pessoa_fisica']['idPessoa_Fisica']);
                $users['telefone'] = $usuario->getTelefoneByContato($users['pessoa_fisica']['Contato_idContato']);
                $users['contato'] = $usuario->getContatoById($users['pessoa_fisica']['Contato_idContato']);
                $users['endereco'] = $usuario->getEnderecoById($users['contato']['idEndereco']);
                
                $users['advogado'] = $usuario->getAdvogadoByIdUsuario($users['usuario']['idUsuario']);
                
                if (count($users['advogado']) > 0) {
                    $dados['oab'] = $users['advogado']['OAB'];
                }
                                
                $dados['login'] = $users['usuario']['Login'];
                $dados['nomePerfil'] = $users['usuario']['idPerfil'];
                $dados['cpf'] = $users['pessoa_fisica']['CPF'];
                $dados['idPF'] = $users['pessoa_fisica']['idPessoa_Fisica'];
                $dados['nome'] = $users['pessoa_fisica']['Nome'];
                $dados['rg'] = $users['pessoa_fisica']['RG'];
                $dados['cnh'] = $users['pessoa_fisica']['CNH'];
                $dados['titulo'] = $users['pessoa_fisica']['Titulo_de_Eleitor'];
                $dados['nascimento'] = $users['pessoa_fisica']['Data_Nasc'];
                $dados['residencial'] = $users['telefone']['Residencial'];
                $dados['celular'] = $users['telefone']['Celular'];
                $dados['email'] = $users['contato']['Email'];
                $dados['uf'] = $users['endereco']['UF'];
                $dados['cep'] = $users['endereco']['CEP'];
                $dados['rua'] = $users['endereco']['Logradouro'];
                $dados['numero'] = $users['endereco']['Numero'];
                $dados['bairro'] = $users['endereco']['Bairro'];
                $dados['complemento'] = $users['endereco']['Complemento'];
                $dados['cidade'] = $users['endereco']['Cidade'];
                $dados['erro'] = false;
                
                

            } else {
                $dados['erro'] = true;
                echo json_encode($dados);exit;
            }
            
        }
        
        echo json_encode($dados);
        exit;
        
    }
    
}
