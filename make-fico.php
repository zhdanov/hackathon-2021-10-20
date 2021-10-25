<?php
require(__DIR__ . '/bootstrap.php');


require(__DIR__ . '/connect/connect-mysql.php');
foreach($dbh->query('SELECT * from CLIENT') as $row) {
    print_r($row);
}
$dbh = null;


require(__DIR__ . '/connect/connect-pgsql.php');
foreach($dbh->query('SELECT * from prod_apps.applications') as $row) {
    print_r($row);
}
$dbh = null;
