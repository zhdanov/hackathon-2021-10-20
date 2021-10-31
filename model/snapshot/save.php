<?php namespace model\snapshot;

function save($app_id, $dbh_bank, $dbh_public) {

    $stmt = $dbh_bank->query("SELECT * from prod_apps.applications WHERE app_id='".$app_id."'");

    $row = $stmt->fetch(\PDO::FETCH_ASSOC);

    $prod_apps = json_encode(['applications'=>$row], JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);


    $dbh_public->query("INSERT INTO SNAPSHOT (`APP_ID`,`CREATED`,`PROD_APPS`) VALUES('" . $app_id . "', NOW(), '".$prod_apps."')");
}
