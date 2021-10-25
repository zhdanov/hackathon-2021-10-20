<?php

try {
    $dbh = new PDO('pgsql:host=localhost;dbname=' . $config['pgsql']['dbname'], $config['pgsql']['user'], $config['pgsql']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
