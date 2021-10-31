<?php

try {
    $dbh_bank = new PDO('pgsql:host=localhost;dbname=' . $config['bank']['dbname'], $config['bank']['user'], $config['bank']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
