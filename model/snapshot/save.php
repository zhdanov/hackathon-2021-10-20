<?php namespace model\snapshot;

function save($app_id, $dbh_bank, $dbh_ins, $dbh_public) {

    $stmt = $dbh_bank->query("SELECT * from prod_apps.applications WHERE app_id='".$app_id."'");
    $row_prod_apps = $stmt->fetch(\PDO::FETCH_ASSOC);
    $prod_apps = json_encode(['applications'=>$row_prod_apps], JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

    $stmt = $dbh_bank->query("SELECT * from prod_loans.loans as pl left join prod_loans.clients c on pl.client_id=c.client_id left join prod_loans.loan_balance plb on pl.loan_id=plb.loan_id left join prod_loans.collaterals pc on pc.loan_id=pl.loan_id WHERE c.client_id='".$row_prod_apps['cust_id']."'");
    $prod_loans = [];
    foreach ($stmt as $row) {
        $prod_loans[] = $row;
    }
    $prod_loans = json_encode($prod_loans, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

    $stmt = $dbh_ins->query("SELECT * from CLIENT where CLIENT_ID='".$row_prod_apps['cust_id']."'");
    $prod_ins = [];
    foreach ($stmt as $row) {
        $prod_ins[] = $row;
    }
    $prod_ins = json_encode($prod_ins, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);


    $stmt = $dbh_public->query("SELECT * from FICO WHERE CLIENT_ID='".$row_prod_apps['cust_id']."'");
    $row = $stmt->fetch(\PDO::FETCH_ASSOC);
    $fico = json_encode($row, JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);


    $dbh_public->query("INSERT INTO SNAPSHOT (`APP_ID`,`CREATED`,`PROD_APPS`,`PROD_LOANS`,`PROD_INS`,`FICO`) VALUES('" . $app_id . "', NOW(), '".$prod_apps."', '".$prod_loans."','".$prod_ins."','".$fico."')");
}
