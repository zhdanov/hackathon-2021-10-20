<?php

use Neoxygen\NeoClient\ClientBuilder;

try {
    $dbh_bank = new PDO('pgsql:host=localhost;dbname=' . $config['bank']['dbname'], $config['bank']['user'], $config['bank']['password']);

    $clt_neo4j = ClientBuilder::create()
    ->addConnection('default','http','localhost',7474,true, $config['neo4j']['user'], $config['neo4j']['password'])
    ->setAutoFormatResponse(true)
    ->build();

} catch (\Exception $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
