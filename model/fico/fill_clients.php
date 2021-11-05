<?php namespace model\fico;


function fill_clients($dbh_bank, $clt_mongo, $dbh_public) {
    foreach (\model\fico\find($dbh_bank, $clt_mongo, $dbh_public) as $row) {
        $client_fico = $dbh_public->query('SELECT * from FICO WHERE CLIENT_ID="' . $row['client_id'] . '"');
        if (!$client_fico->rowCount()) {
            $dbh_public->query('INSERT INTO FICO (CLIENT_ID) VALUES("' . $row['client_id'] . '");');
        }
    }
}
