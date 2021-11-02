<?php namespace model\fico;

function fill_amount_repaid_debts($dbh_bank, $dbh_public) {
    $sql = '
        select c.client_id, c.fio, sum(col.collateral_amt) as amount_repaid_debts
        from prod_loans.clients as c inner join prod_loans.loans l on l.client_id = c.client_id
        inner join prod_loans.collaterals col on col.loan_id = l.loan_id
        where l.close_fact_dt<current_date group by c.client_id;
    ';

    foreach($dbh_bank->query($sql) as $row) {
        $dbh_public->query('UPDATE FICO SET AMOUNT_REPAID_DEBTS="'.$row['amount_repaid_debts'].'" WHERE CLIENT_ID="' . $row['client_id'] . '";');
    }

}
