<?php

use Neoxygen\NeoClient\ClientBuilder;

try {
    $clt_neo4j = ClientBuilder::create()
    ->addConnection('default','http','localhost',7474,true, $config['neo4j']['user'], $config['neo4j']['password'])
    ->setAutoFormatResponse(true)
    ->build();

} catch (\Exception $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
