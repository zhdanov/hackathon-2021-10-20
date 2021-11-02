<?php namespace model\fico;

function fill_length_credit_history($dbh_bank, $dbh_public) {
    $sql = '
        select c.client_id, c.fio, SUM(EXTRACT(EPOCH FROM (lb.end_dt - lb.start_dt)))/60/60/24 as length_credit_history from prod_loans.clients c inner join prod_loans.loans l on l.client_id = c.client_id left join prod_loans.loan_balance lb on l.loan_id = lb.loan_id and lb.end_dt<NOW() group by c.client_id;
    ';
    foreach($dbh_bank->query($sql) as $row) {
        $dbh_public->query('UPDATE FICO SET LENGTH_CREDIT_HISTORY="'.$row['length_credit_history'].'" WHERE CLIENT_ID="' . $row['client_id'] . '";');
    }
}
