<?php

class ClienteController extends Controlador{

    public function index(){
        $dados = array();


        
        $this->loadTemplate("clientes", $dados);
    }

}