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
    
//    NumeroProcesso
//    Juiz
//    advogado2
//    pessoa2
//    idPosicao
//    idContato
//    idStatus_Processo
//    idVara
//    idAdvogado
    
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
    
}
