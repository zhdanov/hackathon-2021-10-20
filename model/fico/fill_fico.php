<?php namespace model\fico;

function fill_fico($dbh_bank, $dbh_public) {

    $cred_amount_sum_list = [];
    foreach($dbh_bank->query('select * from prod_apps.applications') as $row) {
        if (!isset($cred_amount_sum_list[$row['cust_id']])) {
            $cred_amount_sum_list[$row['cust_id']] = 0;
        }
        $cred_amount_sum_list[$row['cust_id']] += $row['cred_amount'];
    }


    foreach($dbh_public->query('select * from FICO') as $row) {
        $fico = 0;

        // FICO 35% 
        $total = $cred_amount_sum_list[$row['CLIENT_ID']];
        //   Сумма погашенных долгов
        $total -= $row['AMOUNT_REPAID_DEBTS']; 
        //   Сумма просрочек на текущий момент
        $total += $row['OVERDUE_AMOUNT_NOW'];
        //   Сумма остатка на счетах
        $total -= $row['AMOUNT_BALANCES']; 
        if ($total <= 0) {
            $fico += 35;
        }

        // FICO 30%
        //   Сумма долга на текущий момент
        if (!$row['AMOUNT_DEBT_NOW']) {
            $fico += 30; 
        } else if ($row['AMOUNT_DEBT_NOW'] < $cred_amount_sum_list[$row['CLIENT_ID']]/2) {
            $fico += 20; 
        } else if ($row['AMOUNT_DEBT_NOW'] < $cred_amount_sum_list[$row['CLIENT_ID']]) {
            $fico += 10; 
        }

        // FICO 15%
        if (($row['LENGTH_CREDIT_HISTORY'] / (365*5)) >= 1) {
            $fico += 15; 
        } else if (($row['LENGTH_CREDIT_HISTORY'] / (365*3)) >= 1) {
            $fico += 7; 
        } else if (($row['LENGTH_CREDIT_HISTORY'] / (365*1)) >= 1) {
            $fico += 2; 
        }

        // FICO 10%
        //   Количество разных счетов (больше -- лучше)
        if ($row['COUNT_DIFFERENT_ACCOUNTS'] >= 30) {
            $fico += 10; 
        } else if ($row['COUNT_DIFFERENT_ACCOUNTS'] >= 20) {
            $fico += 7; 
        } else if ($row['COUNT_DIFFERENT_ACCOUNTS'] >= 10) {
            $fico += 3; 
        }

        // FICO 10%
        //   Количество новых кредитов (последний квартал)
        if (!$row['COUNT_NEW_CREDITS']) {
            $fico += 10; 
        } else if ($row['COUNT_NEW_CREDITS'] <= 1) {
            $fico += 5; 
        }


        $dbh_public->query('UPDATE FICO SET FICO="'.$fico.'" WHERE CLIENT_ID="' . $row['CLIENT_ID'] . '";');
    }
}
