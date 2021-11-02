<?php
require(__DIR__ . '/config.php');

require(__DIR__ . '/connect/connect-bank.php');
require(__DIR__ . '/connect/connect-public.php');

require(__DIR__ . '/model/fico/find.php');
require(__DIR__ . '/model/fico/fill_clients.php');
require(__DIR__ . '/model/fico/fill_amount_repaid_debts.php');
require(__DIR__ . '/model/fico/fill_amount_debt_now.php');
require(__DIR__ . '/model/fico/fill_overdue_amount_now.php');
require(__DIR__ . '/model/fico/fill_length_credit_history.php');
require(__DIR__ . '/model/fico/fill_count_new_credits.php');

require(__DIR__ . '/model/snapshot/find.php');
require(__DIR__ . '/model/snapshot/save.php');
