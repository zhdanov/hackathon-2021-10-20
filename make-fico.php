<?php
require(__DIR__ . '/bootstrap.php');



// fill clients
foreach (\model\fico\find($dbh_bank, $dbh_public) as $row) {
    $client_fico = $dbh_public->query('SELECT * from FICO WHERE CLIENT_ID="' . $row['client_id'] . '"');
    if (!$client_fico->rowCount()) {
        $dbh_public->query('INSERT INTO FICO (CLIENT_ID) VALUES("' . $row['client_id'] . '");');
    }
}

// fill AMOUNT_DEBT_NOW
$sql = '
select c.client_id, c.fio, (sum(od_amt) + sum(int_amt)) as amount_debt_now
from prod_loans.clients c 
inner join prod_loans.loans l on l.client_id = c.client_id
inner join prod_loans.loan_balance lb on lb.loan_id = l.loan_id
group by c.client_id;
';
foreach($dbh_bank->query($sql) as $row) {
    $dbh_public->query('UPDATE FICO SET AMOUNT_DEBT_NOW="'.$row['amount_debt_now'].'" WHERE CLIENT_ID="' . $row['client_id'] . '";');
}

// fill OVERDUE_AMOUNT_NOW
$sql = '
select c.client_id, c.fio, (sum(lb.od_overbue_amt) + sum(lb.int_overbue_amt)) as overdue_amount_now
from prod_loans.clients c
inner join prod_loans.loans l on l.client_id = c.client_id
inner join prod_loans.loan_balance lb on lb.loan_id = l.loan_id
group by c.client_id;
';
foreach($dbh_bank->query($sql) as $row) {
    $dbh_public->query('UPDATE FICO SET OVERDUE_AMOUNT_NOW="'.$row['overdue_amount_now'].'" WHERE CLIENT_ID="' . $row['client_id'] . '";');
}
