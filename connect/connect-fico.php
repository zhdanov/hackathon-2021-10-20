<?php

try {
    $dbh_fico = new PDO('mysql:host=localhost;dbname=' . $config['fico']['dbname'], $config['mysql']['user'], $config['mysql']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
