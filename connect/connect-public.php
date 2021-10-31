<?php

try {
    $dbh_public = new PDO('mysql:host=localhost;dbname=' . $config['public']['dbname'], $config['public']['user'], $config['public']['password']);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
