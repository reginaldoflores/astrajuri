<?php

class HomeController extends Controlador{

    public function index(){
        $dados = array();


        
        $this->loadTemplate("home", $dados);
    }

}