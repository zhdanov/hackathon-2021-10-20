<?php
require(__DIR__ . '/bootstrap.php');


// fill clients
\model\fico\fill_clients($dbh_bank, $dbh_public);

// fill AMOUNT_REPAID_DEBTS
\model\fico\fill_amount_repaid_debts($dbh_bank, $dbh_public);

// fill AMOUNT_DEBT_NOW
\model\fico\fill_amount_debt_now($dbh_bank, $dbh_public);

// fill OVERDUE_AMOUNT_NOW
\model\fico\fill_overdue_amount_now($dbh_bank, $dbh_public);

// fill AMOUNT_BALANCES
\model\fico\fill_amount_balances($clt_neo4j, $dbh_public);

// fill LENGTH_CREDIT_HISTORY
\model\fico\fill_length_credit_history($dbh_bank, $dbh_public);

// fill COUNT_DIFFERENT_ACCOUNTS
\model\fico\fill_count_different_accounts($clt_neo4j, $dbh_public);

// fill COUNT_NEW_CREDITS
\model\fico\fill_count_new_credits($dbh_bank, $dbh_public);
