<?php
require 'enviroment.php';

define("HOME", "http://localhost/astrajuri");

global $config;

$config = array();

if(ENVIRONMENT == "development"):
    $config['dbname']   =   "mydb";
    $config['host']     =   "localhost";
    $config['dbuser']   =   "root";
    $config['dbpass']   =   "";
else:
    $config['dbname']   =   "mydb";
    $config['host']     =   "localhost";
    $config['dbuser']   =   "root";
    $config['dbpass']   =   "";
endif;

global $pdo;

$pdo = new PDO("mysql:dbname=".$config['dbname'].";host=".$config['host'], $config['dbuser'], $config['dbpass']);