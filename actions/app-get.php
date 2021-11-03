<?php

require(__DIR__ . '/../bootstrap.php');

$app = \model\app\find((int)$_GET['app_id'], $dbh_bank, $dbh_public);

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Заявки / Детализация #<?=(int)$_GET['app_id']?></title>
  </head>
  <body>
    <h1><a href="/">Заявки</a> / Детализация #<?=(int)$_GET['app_id']?></h1>

<br />
<h2>FICO <?=$app['fico']['FICO']?>%</h2>
<table class="table table-sm" style="width: 450px">
  <tbody>
    <tr>
      <th scope="row" rowspan="3">35%</th>
      <td>Сумма погашенных долгов</td>
      <td><?=$app['fico']['AMOUNT_REPAID_DEBTS']?></td>
    </tr>
    <tr>
      <td>Сумма просрочек на текущий момент</td>
      <td><?=$app['fico']['OVERDUE_AMOUNT_NOW']?></td>
    </tr>
    <tr>
      <td>Сумма остатка на счетах</td>
      <td><?=$app['fico']['AMOUNT_BALANCES']?></td>
    </tr>
    <tr>
      <th scope="row">30%</th>
      <td>Сумма долга на текущий момент</td>
      <td><?=$app['fico']['AMOUNT_DEBT_NOW']?></td>
    </tr>
    <tr>
      <th scope="row">15%</th>
      <td>Длина кредитной истории в днях</td>
      <td><?=$app['fico']['LENGTH_CREDIT_HISTORY']?></td>
    </tr>
    <tr>
      <th scope="row">10%</th>
      <td>Количество разных счетов</td>
      <td><?=$app['fico']['COUNT_DIFFERENT_ACCOUNTS']?></td>
    </tr>
    <tr>
      <th scope="row">10%</th>
      <td>Количество новых кредитов</td>
      <td><?=$app['fico']['COUNT_NEW_CREDITS']?></td>
    </tr>
  </tbody>
</table>

<h2>Банк</h2>
<table class="table table-sm" style="width: 650px">
  <tbody>
    <tr>
      <th scope="row">Дата подачи заявки</th>
      <td><?=$app['app']['app_date']?></td>
    </tr>
    <tr>
      <th scope="row">Размер долга из заявки</th>
      <td><?=$app['app']['cred_amount']?></td>
    </tr>
    <tr>
      <th scope="row">Срок кредитования (в месяцах)</th>
      <td><?=$app['app']['cred_term']?></td>
    </tr>
    <tr>
      <th scope="row">Цель кредитования</th>
      <td><?=$app['app']['cred_object']?></td>
    </tr>
    <tr>
      <th scope="row">Размер ежемесячного дохода заявителя</th>
      <td><?=$app['app']['cust_month_income']?></td>
    </tr>
    <tr>
      <th scope="row">Размер ежемесячного дохода семьи заявителя</th>
      <td><?=$app['app']['cust_family_month_income']?></td>
    </tr>
    <tr>
      <th scope="row">ФИО заявителя</th>
      <td><?=$app['app']['cust_fio']?></td>
    </tr>
    <tr>
      <th scope="row">ID заявителя</th>
      <td><?=$app['app']['cust_id']?></td>
    </tr>
    <tr>
      <th scope="row">Дата рождения заявителя</th>
      <td><?=$app['app']['cust_birth']?></td>
    </tr>
    <tr>
      <th scope="row">ИНН заявителя</th>
      <td><?=$app['app']['cust_inn']?></td>
    </tr>
    <tr>
      <th scope="row">Есть поручитель?</th>
      <td><?=$app['app']['guarantor_flag']?'Да':'Нет'?></td>
    </tr>
<?php if ($app['app']['guarantor_flag']) { ?>
    <tr>
      <th scope="row">ФИО поручителя</th>
      <td><?=$app['app']['guarantor_fio']?></td>
    </tr>
    <tr>
      <th scope="row">Телефон поручителя</th>
      <td><?=$app['app']['guarantor_phone']?></td>
    </tr>
    <tr>
      <th scope="row">Дата рождения поручителя</th>
      <td><?=$app['app']['guarantor_birth']?></td>
    </tr>
<?php } ?>
    <tr>
      <th scope="row">Размер залога</th>
      <td><?=$app['app']['pledge_amount']?></td>
    </tr>
    <tr>
      <th scope="row">Тип залога</th>
      <td><?=$app['app']['pledge_type']?></td>
    </tr>
    <tr>
      <th scope="row">Дата и время проведения телефонного интервью</th>
      <td><?=$app['app']['interview_datetime']?></td>
    </tr>
    <tr>
      <th scope="row">Тип связи заявителя с банком</th>
      <td><?=$app['app']['cust_relation_bank_type']?></td>
    </tr>
    <tr>
      <th scope="row">Канал продажи</th>
      <td><?=$app['app']['app_sale_channel']?></td>
    </tr>
  </tbody>
</table>

<h2>Доступные для продажи продукты</h2>

<h2>Интервью</h2>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
