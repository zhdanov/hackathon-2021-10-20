<?php namespace model\fico;

function fill_overdue_amount_now($dbh_bank, $dbh_public) {
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
}
