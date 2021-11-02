<?php namespace model\snapshot;

function find($app_id, $dbh_public) {

    $stmt = $dbh_public->query("SELECT * from SNAPSHOT WHERE APP_ID='".$app_id."' ORDER BY CREATED DESC");

    $row = $stmt->fetch(\PDO::FETCH_ASSOC);

    return $row;
}
