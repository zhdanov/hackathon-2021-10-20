<?php
class Migration20211102_092138 extends Migration
{
    public function up()
    {
        $sql = <<<SQL
ALTER TABLE FICO MODIFY LENGTH_CREDIT_HISTORY bigint DEFAULT NULL;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function down()
    {
        $sql = <<<SQL
ALTER TABLE FICO MODIFY LENGTH_CREDIT_HISTORY timestamp DEFAULT NULL;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function description()
    {
        return "Migration created at 20211102_092138.";
    }
}
