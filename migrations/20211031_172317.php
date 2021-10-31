<?php
class Migration20211031_172317 extends Migration
{
    public function up()
    {
        $sql = <<<SQL
CREATE TABLE `SNAPSHOT` (
  `APP_ID` bigint DEFAULT NULL,
  `CREATED` timestamp NULL DEFAULT NULL,
  `PROD_APPS` text DEFAULT NULL,
  `PROD_INS` text DEFAULT NULL,
  `BANK` text DEFAULT NULL,
  `FICO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function down()
    {
        $sql = <<<SQL
DROP TABLE `SNAPSHOT`;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function description()
    {
        return "Migration created at 20211031_172317.";
    }
}
