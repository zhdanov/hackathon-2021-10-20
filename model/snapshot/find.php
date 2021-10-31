<?php namespace model\snapshot;

function find($app_id, $dbh_public) {

    $stmt = $dbh_public->query("SELECT * from SNAPSHOT WHERE APP_ID='".$app_id."'");

    $row = $stmt->fetch(\PDO::FETCH_ASSOC);

    return $row;
}
