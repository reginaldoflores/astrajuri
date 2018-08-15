<?php

class Cliente extends Model{

    public function updateCliente($nome, $tipo, $email, $phone, $cp, $dataNascimento, $nameRua, $number, $bairro, $cidade, $uf, $comp, $id) {
        $sql = $this->db->prepare("UPDATE contato contato SET Email = :email WHERE idContato = :id");
        $sql->bindValue(":email", $email);
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        $sql = $this->db->prepare("UPDATE telefone SET Residencial = :telefone WHERE Contato_idContato = :contato");
        $sql->bindValue(":telefone", $phone);
        $sql->bindValue(":contato", $id);
        $sql->execute();
        
        $endereco = $this->getFullClienteById($id);
        $idEndereco = $endereco['endereco']['idEndereco'];
        
        $sql = $this->db->prepare("UPDATE endereco SET Numero = :numero, Bairro = :bairro, Cidade = :cidade, Complemento = :comp, Logradouro = :rua, UF = :uf WHERE idEndereco = :id");
        $sql->bindvalue(":numero", $number);
        $sql->bindvalue(":bairro", $bairro);
        $sql->bindvalue(":cidade", $cidade);
        $sql->bindvalue(":comp", $comp);
        $sql->bindvalue(":rua", $nameRua);
        $sql->bindvalue(":uf", $uf);
        $sql->bindvalue(":id", $idEndereco);
        $sql->execute();
        
        if ($tipo == "cpf" || $tipo == "CPF") {
            $sql = $this->db->prepare("UPDATE pessoa_fisica SET Nome = :nome, Data_Nasc = :nascimento, CPF = :cpf WHERE Contato_idContato = :contato");
            $sql->bindValue(":nome", $nome);
            $sql->bindValue(":nascimento", $dataNascimento);
            $sql->bindValue(":cpf", $cp);
            $sql->bindValue(":contato", $id);
            $sql->execute();
        } else {
            $sql = $this->db->prepare("UPDATE pessoa_juridica SET CNPJ = :cnpj WHERE Contato_idContato = :contato");
            $sql->bindValue(":cnpj", $cp);
            $sql->bindValue(":contato", $id);
            $sql->execute();
        }
    }
    
    public function addCliente($tipo, $nome, $email, $phone, $cp, $rg, $dataNascimento, $nameRua, $cep, $number, $bairro, $cidade, $uf, $comp) {
        $sql = $this->db->prepare("INSERT INTO endereco SET CEP = :cep, Numero = :numero, Bairro = :bairro, Cidade = :cidade, Complemento = :comp, Logradouro = :rua, UF = :uf");
        $sql->bindvalue(":cep", $cep);
        $sql->bindvalue(":numero", $number);
        $sql->bindvalue(":bairro", $bairro);
        $sql->bindvalue(":cidade", $cidade);
        $sql->bindvalue(":comp", $comp);
        $sql->bindvalue(":rua", $nameRua);
        $sql->bindvalue(":uf", $uf);
        $sql->execute();
        
        $idEndereco = $this->db->lastInsertId();
        
        $sql = $this->db->prepare("INSERT INTO contato SET Email = :email, idEndereco = :endereco");
        $sql->bindValue(":email", $email);
        $sql->bindValue(":endereco", $idEndereco);
        $sql->execute();
        
        $idContato = $this->db->lastInsertId();
        
        $sql = $this->db->prepare("INSERT INTO telefone SET Residencial = :telefone, Contato_idContato = :contato");
        $sql->bindValue(":telefone", $phone);
        $sql->bindValue(":contato", $idContato);
        $sql->execute();
        
        if ($tipo == "cpf") {
            $sql = $this->db->prepare("INSERT INTO pessoa_fisica SET Nome = :nome, Data_Nasc = :nascimento, CPF = :cpf, RG = :rg, Contato_idContato = :contato");
            $sql->bindValue(":nascimento", $dataNascimento);
            $sql->bindValue(":nome", $nome);
            $sql->bindValue(":cpf", $cp);
            $sql->bindValue(":rg", $rg);
            $sql->bindValue(":contato", $idContato);
            $sql->execute();
        } else {
            $sql = $this->db->prepare("INSERT INTO pessoa_juridica SET CNPJ = :cnpj, Contato_idContato = :contato");
            $sql->bindValue(":cnpj", $cp);
            $sql->bindValue(":contato", $idContato);
            $sql->execute();
        }
        
    }
    
    public function getClientes() {
        $array = array();
        
        $sql = $this->db->prepare("SELECT *, "
                . "(select pessoa_fisica.CPF from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as cpf, "
                . "(select pessoa_fisica.Nome from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as nome"
                . " FROM contato");
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getEstados() {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM estado");
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getClienteById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT *, "
                . "(select pessoa_fisica.CPF from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as cpf, "
                . "(select pessoa_fisica.CPF from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as Nome, "
                . "(select pessoa_fisica.Data_Nasc from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as nascimento"
                . " FROM contato WHERE idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getFullClienteById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM contato WHERE idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
            
            $array['telefone'] = $this->getTelefoneByContato($array['idContato']);
            $array['endereco'] = $this->getEnderecoById($array['idEndereco']);
            $array['pessoa'] = $this->getPessoaFisicaByContato($array['idContato']);
            $array['tipo'] = "CPF";
            if (count($array['pessoa']) <= 0) {
                $array['pessoa'] = $this->getPessoaJuridicaByContato($array['idContato']);
                $array['tipo'] = "CNPJ";
            }
        }
        
        return $array;
    }
    
    public function getTelefoneByContato($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM telefone WHERE Contato_idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getEnderecoById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM endereco WHERE idEndereco = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getPessoaFisicaByContato($contato) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM pessoa_fisica WHERE Contato_idContato = :id");
        $sql->bindValue(":id", $contato);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getPessoaJuridicaByContato($contato) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM pessoa_juridica WHERE Contato_idContato = :id");
        $sql->bindValue(":id", $contato);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function deleteCliente($id) {
        $contato = $this->getFullClienteById($id);
        
        $sql = $this->db->prepare("DELETE FROM endereco WHERE idEndereco = :id");
        $sql->bindValue(":id", $contato['endereco']['idEndereco']);
        $sql->execute();
        
        $sql = $this->db->prepare("DELETE FROM telefone WHERE Contato_idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        $pessoa = $this->getPessoaFisicaByContato($id);
        if (count($pessoa) > 0) {
            $sql = $this->db->prepare("DELETE FROM pessoa_fisica WHERE Contato_idContato = :id");
            $sql->bindValue(":id", $id);
            $sql->execute();
        }else{
            $sql = $this->db->prepare("DELETE FROM pessoa_juridica WHERE Contato_idContato = :id");
            $sql->bindValue(":id", $id);
            $sql->execute();
        }
        
        $sql = $this->db->prepare("DELETE FROM contato WHERE idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
    }
    
}
