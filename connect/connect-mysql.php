<?php

try {
    $dbh = new PDO('mysql:host=localhost;dbname=' . $config['mysql']['dbname'], $config['mysql']['user'], $config['mysql']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
