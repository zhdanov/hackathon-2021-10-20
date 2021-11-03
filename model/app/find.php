<?php namespace model\app;

function find($app_id, $dbh_bank, $dbh_public) {

    $stmt = $dbh_bank->query('SELECT * from prod_apps.applications WHERE app_id=' . (int)$app_id);
    $app = $stmt->fetch(\PDO::FETCH_ASSOC);

    $stmt = $dbh_public->query('SELECT * from FICO WHERE CLIENT_ID="' . (int)$app['cust_id'] . '" LIMIT 1');
    $fico = $stmt->fetch(\PDO::FETCH_ASSOC);

    return ['app'=>$app, 'fico'=>$fico];
}
