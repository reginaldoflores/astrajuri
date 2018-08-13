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
