<?php
class Migration20211102_175821 extends Migration
{
    public function up()
    {
        $sql = <<<SQL
ALTER TABLE SNAPSHOT RENAME COLUMN BANK TO PROD_LOANS;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function down()
    {
        $sql = <<<SQL
ALTER TABLE SNAPSHOT RENAME COLUMN PROD_LOANS TO BANK;
SQL;
        $this->migrator->getDbCon()->exec($sql);
    }
    public function description()
    {
        return "Migration created at 20211102_175821.";
    }
}
