<?php

class Processo extends Model{
    
    public function getInstancias() {
        $array = array();
        
        $sql = $this->db->query("SELECT * FROM instancia");
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getProcessoByNum($num) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM processo WHERE NumeroProcesso = :num");
        $sql->bindValue(":num", $num);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getFases() {
        $array = array();
        
        $sql = $this->db->query("SELECT * FROM status_processo");
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getConclusoes() {
        $array = array();
        
        $sql = $this->db->query("SELECT * FROM conclusao");
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getClienteByNome($nome) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM pessoa_fisica WHERE Nome = :nome");
        $sql->bindValue(":nome", $nome);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }else{
            $sql = $this->db->prepare("SELECT * FROM pessoa_jurica WHERE Nome_Fantasia = :nome");
            $sql->bindValue(":nome", $nome);
            $sql->execute();
            
            if ($sql->rowCount() > 0) {
                $array = $sql->fetch();
            }
            
        }
        
        return $array;
    }
    
    public function getClienteByContato($id) {
        $array = array();
        
        $sql = $this->db->prepare("select Contato_idContato, Nome,  CPF, (select contato.idContato from contato where contato.idContato = pessoa_fisica.Contato_idContato) as idContato  from pessoa_fisica where Contato_idContato = :id union select Contato_idContato, Nome_Fantasia, CNPJ, (select contato.idContato from contato where contato.idContato = pessoa_juridica.Contato_idContato) as idContato from pessoa_juridica where Contato_idContato = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getAdvogadoById($id) {
        $array = array();
        
        $sql = $this->db->prepare("select *, (select usuario.Pessoa_Fisica_idPessoa_Fisica from usuario where usuario.idUsuario = advogado.Usuario_idUsuario) as PF from advogado where idAdvogado = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function getPosicoes() {
        $array = array();
        
        $sql = $this->db->query("SELECT * FROM posicao");
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getAdvogadosFull() {
        $array = array();
        
        $sql = $this->db->query("select *, (select (select pessoa_fisica.Nome from pessoa_fisica where usuario.Pessoa_Fisica_idPessoa_Fisica = pessoa_fisica.idPessoa_Fisica) as nome from usuario where usuario.idUsuario = advogado.Usuario_idUsuario) as nome from advogado;");
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function addProcesso($num, $juiz, $adv, $adv2, $cliente, $pessoa2, $fase, $vara, $posicao) {
        
        $sql = $this->db->prepare("INSERT INTO processo SET NumeroProcesso = :nome, Juiz = :juiz, advogado2 = :adv2, pessoa2 = :pessoa2, idPosicao = :posicao, idContato = :cliente, idStatus_Processo = :status_processo, idVara = :vara, idAdvogado = :adv");
        $sql->bindvalue(":nome", $num);
        $sql->bindvalue(":juiz", $juiz);
        $sql->bindvalue(":adv2", $adv2);
        $sql->bindvalue(":cliente", $cliente);
        $sql->bindvalue(":pessoa2", $pessoa2);
        $sql->bindvalue(":posicao", $posicao);
        $sql->bindvalue(":status_processo", $fase);
        $sql->bindvalue(":vara", $vara);
        $sql->bindvalue(":adv", $adv);
        $sql->execute();
        
    }
    
    public function editProcesso($num, $juiz, $adv, $adv2, $cliente, $pessoa2, $fase, $vara, $posicao, $conclusao, $idProcesso) {
        
        
        if ($conclusao != 0) {
            $sql = $this->db->prepare("UPDATE processo SET NumeroProcesso = :nome, Juiz = :juiz, advogado2 = :adv2, pessoa2 = :pessoa2, idPosicao = :posicao, idContato = :cliente, idStatus_Processo = :status_processo, idVara = :vara, idAdvogado = :adv, Conclusao_idConclusao = :conclusao WHERE idProcesso = :id");
            $sql->bindValue(":conclusao", $conclusao);
        }else{
            $sql = $this->db->prepare("UPDATE processo SET NumeroProcesso = :nome, Juiz = :juiz, advogado2 = :adv2, pessoa2 = :pessoa2, idPosicao = :posicao, idContato = :cliente, idStatus_Processo = :status_processo, idVara = :vara, idAdvogado = :adv WHERE idProcesso = :id");
        }

        $sql->bindvalue(":nome", $num);
        $sql->bindvalue(":juiz", $juiz);
        $sql->bindvalue(":adv2", $adv2);
        $sql->bindvalue(":cliente", $cliente);
        $sql->bindvalue(":pessoa2", $pessoa2);
        $sql->bindvalue(":posicao", $posicao);
        $sql->bindvalue(":status_processo", $fase);
        $sql->bindvalue(":vara", $vara);
        $sql->bindvalue(":adv", $adv);
        $sql->bindvalue(":id", $idProcesso);
        $sql->execute();
        
    }
    
    public function delProcesso($idProcesso) {
        $sql = $this->db->prepare("DELETE FROM processo WHERE idProcesso = :id");
        $sql->bindValue(":id", $idProcesso);
        $sql->execute();
    }
    
}
