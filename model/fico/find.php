<?php namespace model\fico;

function find($dbh_bank, $dbh_public) {

    $list_bank = $dbh_bank->query('SELECT * from prod_apps.applications');

    $list_fico = [];
    $list_fico_db = $dbh_public->query('SELECT * from FICO');
    foreach ($list_fico_db as $row) {
        $list_fico[$row['CLIENT_ID']] = $row;
    }

    $list_snapshot = [];
    $list_snapshot_db = $dbh_public->query('SELECT * from SNAPSHOT');
    foreach ($list_snapshot_db as $row) {
        $list_snapshot[$row['APP_ID']] = $row;
    }

    foreach($list_bank as $row) {
        $list[] = ['id'=>$row['app_id'], 'client_id'=> $row['cust_id'], 'fio'=> $row['cust_fio'], 'fico'=> ($list_fico[$row['cust_id']]['FICO']??0) . '%', 'snapshot'=>(isset($list_snapshot[$row['app_id']])?true:false)];
    }

    return $list;
}
