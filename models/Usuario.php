<?php

class Usuario extends Model{
    
    public function isLogged() {
        if (isset($_SESSION['c_juri']) && !empty($_SESSION['c_juri'])) {
            return true;
        }else{
            return false;
        }
    }
    
    public function logar($login, $senha) {
        $sql = $this->db->prepare("SELECT * FROM usuario WHERE Login = :login AND Senha = :senha");
        $sql->bindValue(":login", $login);
        $sql->bindValue(":senha", md5($senha));
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
            $_SESSION['c_juri'] = $array['idUsuario'];
            return true;
        } else {
            return false;
        }
    }
    
    public function addUsuario($uf, $cep, $logradouro, $numero, $bairro, $complemento, $cidade, $email, $tel, $celular, $cpf, $nome, $rg, $cnh, $titulo_de_eleitor, $data_nasc, $nomePerfil, $descricao, $login, $senha) {
        
//        TABELA ENDERECO
        $sql = $this->db->prepare("INSERT INTO endereco SET UF = :estado, CEP = :cep, Logradouro = :rua, Numero = :numero, Bairro = :bairro, complemento = :comp, cidade = :cidade");
        $sql->bindValue(":estado", $uf);        
        $sql->bindValue(":cep", $cep);        
        $sql->bindValue(":rua", $logradouro);        
        $sql->bindValue(":numero", $numero);        
        $sql->bindValue(":bairro", $bairro);        
        $sql->bindValue(":cidade", $cidade);        
        $sql->bindValue(":comp", $complemento);
        $sql->execute();
        
        $idEndereco = $this->db->lastInserId();
        
//        TABELA CONTATO
        $sql = $this->db->prepare("INSERT INTO contato SET Email = :email, idEndereco = :id");
        $sql->bindValue(":email", $email);
        $sql->bindValue(":id", $idEndereco);
        $sql->execute();
        
        $idContato = $this->db->lastInsertId();
        
//        TABELA TELEFONE
        $sql = $this->db->prepare("INSERT INTO telefone SET Residencial = :tel, Celular = :cel, Contato_idContato = :idContato");
        $sql->bindValue(":tel", $tel);
        $sql->bindValue(":celular", $celular);
        $sql->bindValue(":idContato", $idContato);
        $sql->execute();
        
//        TABELA PESSOA FISICA
        $sql = $this->db->prepare("INSERT INTO pessoa_fisica SET CPF = :cpf, Nome = :nome, RG =:rg, CNH = :cnh, Titulo_de_Eleitor = :titulo, Data_Nasc = :nascimento, Contato_idContato = :idContato");
        $sql->bindValue(":cpf", $cpf);
        $sql->bindValue(":nome", $nome);
        $sql->bindValue(":rg", $rg);
        $sql->bindValue(":cnh", $cnh);
        $sql->bindValue(":titulo", $titulo_de_eleitor);
        $sql->bindValue(":nascimento", $data_nasc);
        $sql->bindValue(":idContato", $idContato);
        $sql->execute();
        
        $idPessoa = $this->db->lastInserId();
        
//        TABELA PERFIL
        $sql = $this->db->prepare("INSERT INTO perfil SET Nome_Perfil = :nomePerfil, Descricao = :descricao");
        $sql->bindValue(":nomePerfil", $nomePerfil);
        $sql->bindValue(":descricao", $descricao);
        $sql->execute();
        
        $idPerfil = $this->db->lastInserId();
        
//        TABELA USUARIO
        $sql = $this->db->prepare("INSERT INTO usuario SET Login = :login, Senha = :senha, idPerfil = :idPerfil, Pessoa_Fisica_idPessoa_Fisica = :pf");
        $sql->bindValue(":login", $login);
        $sql->bindValue(":senha", md5($senha));
        $sql->bindValue(":idPerfil", $idPerfil);
        $sql->bindValue(":pf", $idPessoa);
        $sql->execute();
        
    }
    
    public function getPessoaByCPF($cpf) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM pessoa_fisica WHERE CPF = :cpf");
        $sql->bindValue(":cpf", $cpf);
        $sql->execute();
        
        if ($sql->rowCount() > 0 ) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getUsuarioByIdPF($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM usuario WHERE Pessoa_Fisica_idPessoa_Fisica = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0 ) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getPerfilById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM perfil WHERE idPerfil = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0 ) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getTelefoneByContato($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM contato WHERE Contato_idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0 ) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getEnderecoById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM contato WHERE idEndereco = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0 ) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getDadosUser() {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM usuario WHERE idUsuario = :id");
        $sql->bindValue(":id", $_SESSION['c_juri']);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
            $array['pessoa'] = $this->getPessoaById($array['Pessoa_Fisica_idPessoa_Fisica'], "fisica");
            $array['contato'] = $this->getContatoById($array['pessoa']['Contato_idContato']);
        }
        
        return $array;
    }
    
    public function getPessoaById($idPessoa, $tipo = "fisica") {
        $array = array();
        
        if ($tipo == "fisica") {
            $sql = $this->db->prepare("SELECT * FROM pessoa_fisica WHERE idPessoa_Fisica = :id");
        }elseif($tipo == "juridica"){
            $sql = $this->db->prepare("SELECT * FROM pessoa_juridica WHERE idPessoa_Juridica = :id");
        }
        $sql->bindValue(":id", $idPessoa);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getContatoById($idContato) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM contato WHERE idContato = :id");
        $sql->bindValue(":id", $idContato);
        $sql->execute();
        
       if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
}
