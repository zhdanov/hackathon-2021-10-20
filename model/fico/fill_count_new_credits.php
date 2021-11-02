<?php namespace model\fico;

function fill_count_new_credits($dbh_bank, $dbh_public) {
    $sql = '
        select c.client_id, c.fio, count(l.loan_id) as count_new_credits
        from prod_loans.clients c inner join prod_loans.loans l on l.client_id = c.client_id
        where l.begin_dt > CURRENT_DATE-90 group by c.client_id;
    ';

    foreach($dbh_bank->query($sql) as $row) {
        $dbh_public->query('UPDATE FICO SET COUNT_NEW_CREDITS="'.$row['count_new_credits'].'" WHERE CLIENT_ID="' . $row['client_id'] . '";');
    }
}
