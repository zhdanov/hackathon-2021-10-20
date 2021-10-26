<?php namespace model\fico;

function find($dbh_bank, $dbh_fico) {

    $list_bank = $dbh_bank->query('SELECT * from prod_apps.applications');

    $list_fico = [];
    $list_fico_db = $dbh_fico->query('SELECT * from FICO');

    foreach ($list_fico_db as $row) {
        $list_fico[$row['CLIENT_ID']] = $row;
    }

    foreach($list_bank as $row) {
        $fico = 0;

        if (isset($list_fico[$row['cust_id']])) {
            if ((int) $list_fico[$row['cust_id']]['OVERDUE_AMOUNT_NOW'] > 0) {
                $fico = rand(10, 35);
            } else {
                $fico = rand(75, 90);
            }
        }

        $list[] = ['id'=>$row['app_id'], 'client_id'=> $row['cust_id'], 'fio'=> $row['cust_fio'], 'fico'=> $fico . '%'];
    }

    return $list;
}
