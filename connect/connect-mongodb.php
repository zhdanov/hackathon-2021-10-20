<?php

use Neoxygen\NeoClient\ClientBuilder;

try {
    $con = new \MongoDB\Client("mongodb://localhost:27017");
    $clt_mongo = $con->bank;
} catch (\Exception $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
