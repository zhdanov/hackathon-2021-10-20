<?php namespace model\fico;

function fill_amount_balances($clt_neo4j, $dbh_public) {
    $query = 'match(card:CARD) <- [:OWNS]-(client) return sum(card.SALARY_MONTH_INCOME) AS amount_balances, client.CLIENT_ID';
    $clt_neo4j->sendCypherQuery($query);

    $result = $clt_neo4j->getRows();

    foreach ($result["amount_balances"] as $key => $value) {
        $dbh_public->query('UPDATE FICO SET AMOUNT_BALANCES="'.$value.'" WHERE CLIENT_ID="' . $result["client.CLIENT_ID"][$key] . '";');
    }
}
