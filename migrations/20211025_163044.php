<?php
class Migration20211025_163044 extends Migration
{
    public function up()
    {
        $sql = <<<SQL
CREATE TABLE `FICO` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `AMOUNT_REPAID_DEBTS` decimal(12,4) DEFAULT NULL,
  `AMOUNT_DEBT_NOW` decimal(12,4) DEFAULT NULL,
  `OVERDUE_AMOUNT_NOW` decimal(12,4) DEFAULT NULL,
  `AMOUNT_BALANCES` decimal(12,4) DEFAULT NULL,
  `LENGTH_CREDIT_HISTORY` timestamp NULL DEFAULT NULL,
  `COUNT_DIFFERENT_ACCOUNTS` bigint DEFAULT NULL,
  `COUNT_NEW_CREDITS` bigint DEFAULT NULL,
  `FICO` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function down()
    {
        $sql = <<<SQL
DROP TABLE `FICO`;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function description()
    {
        return "CREATE FICO TABLE";
    }
}
