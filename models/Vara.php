<?php

class Vara extends Model{
    
    public function addVara($vara) {
        $sql = $this->db->prepare("INSERT INTO vara SET Nome = :Nome ");
        $sql->bindValue(":Nome", $vara);
        $sql->execute();
    }
    
    public function getVaras() {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM vara");
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetchAll();
        }
        
        return $array;
    }
    
    public function getVaraById($id) {
        $array = array();
        
        $sql = $this->db->prepare("SELECT * FROM vara WHERE idVara = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        
        if ($sql->rowCount() > 0) {
            $array = $sql->fetch();
        }
        
        return $array;
    }
    
    public function updateVara($vara, $id) {
        $sql = $this->db->prepare("UPDATE vara SET Nome = :Nome, WHERE idVara = :id");
        $sql->bindValue(":id", $id);
        $sql->bindValue(":nome", $vara);
        $sql->execute();
    }
    
    public function deleteVara($id) {
        $sql = $this->db->prepare("DELETE FROM vara WHERE idVara = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
    }
    
}
