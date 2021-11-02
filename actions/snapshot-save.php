<?php
require(__DIR__ . '/../bootstrap.php');

\model\snapshot\save((int)$_POST['app_id'], $dbh_bank, $dbh_ins, $dbh_public);

header("Location: /");
die();
