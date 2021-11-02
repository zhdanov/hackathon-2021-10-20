<?php namespace model\fico;

function fill_amount_debt_now($dbh_bank, $dbh_public) {
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
}
