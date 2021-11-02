<?php namespace model\fico;

function fill_count_different_accounts($clt_neo4j, $dbh_public) {
    $query = 'match(card:CARD) <- [:OWNS]-(client) return count(card.CARD_ID) AS count_different_accounts, client.CLIENT_ID';
    $clt_neo4j->sendCypherQuery($query);

    $result = $clt_neo4j->getRows();

    foreach ($result["count_different_accounts"] as $key => $value) {
        $dbh_public->query('UPDATE FICO SET COUNT_DIFFERENT_ACCOUNTS="'.$value.'" WHERE CLIENT_ID="' . $result["client.CLIENT_ID"][$key] . '";');
    }
}
