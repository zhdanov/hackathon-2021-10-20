<?php
require(__DIR__ . '/config.php');

require(__DIR__ . '/connect/connect-bank.php');
require(__DIR__ . '/connect/connect-public.php');

require(__DIR__ . '/model/fico/find.php');

require(__DIR__ . '/model/snapshot/find.php');
require(__DIR__ . '/model/snapshot/save.php');
