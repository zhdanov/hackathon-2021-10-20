<?php
require(__DIR__ . '/../bootstrap.php');

\model\snapshot\save((int)$_POST['app_id'], $dbh_bank, $dbh_ins, $dbh_public);

if (strstr($_SERVER['HTTP_REFERER'], 'snapshot-get.php')) {
    header("Location: " . $_SERVER['HTTP_REFERER']);
} else {
    header("Location: /");
}
die();
