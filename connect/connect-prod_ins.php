<?php

try {
    $dbh_ins = new PDO('mysql:host=localhost;dbname=' . $config['prod_ins']['dbname'], $config['prod_ins']['user'], $config['prod_ins']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
