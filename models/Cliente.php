<?php

class Cliente extends Model{
    
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
        
        $sql = $this->db->prepare("INSERT INTO contato Nome = :nome, Email = :email, Cliente = :cliente, idEndereco = :endereco");
        $sql->bindValue(":nome", $nome);
        $sql->bindValue(":email", $email);
        $sql->bindValue(":cliente", 1);
        $sql->bindValue(":endereco", $this->db->lastInsertId());
        $sql->execute();
        
        $idContato = $this->db->lastInsertId();
        
        $sql = $this->db->prepare("INSERT INTO telefone SET Residencial = :telefone, Contato_idContato = :contato");
        $sql->bindValue(":telefone", $phone);
        $sql->bindValue(":contato", $idContato);
        $sql->execute();
        
        if ($tipo == "cpf") {
            $sql = $this->db->prepare("INSERT INTO pessoa_fisica SET Data_Nasc = :nascimento, CPF = :cpf, RG = :rg, Contato_idContato = :contato");
            $sql->bindValue(":nasci", $dataNascimento);
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
        
        $sql = $this->db->prepare("SELECT *, (select pessoa_fisica.CPF from pessoa_fisica where pessoa_fisica.Contato_idContato = contato.idContato) as cpf FROM contato WHERE Cliente = 1");
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
    
}
