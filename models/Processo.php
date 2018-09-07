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
    
}
