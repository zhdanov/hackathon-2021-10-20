<?php

require(__DIR__ . '/../bootstrap.php');

$row = \model\snapshot\find((int)$_GET['app_id'], $dbh_public);

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Заявки / Снапшот</title>
  </head>
  <body style="padding: 10px;">
    <h1><a href="/">Заявки</a> / Снапшот</h1>

    <form method="POST" action="/actions/snapshot-save.php">
      <input type="hidden" name="app_id" value="<?=(int)$_GET['app_id']?>" />
      <button class="btn btn-primary" type="submit">Обновить</button>
    </form>

    <br />

    <h2>Дата</h2>
    <p><?=$row['CREATED']?></p>

    <h2>PROD_APPS</h2>
    <textarea rows="10" cols="50"><?=$row['PROD_APPS']?></textarea>

    <h2>PROD_LOANS</h2>
    <textarea rows="10" cols="50"><?=$row['PROD_LOANS']?></textarea>

    <h2>PROD_INS</h2>
    <textarea rows="10" cols="50"><?=$row['PROD_INS']?></textarea>

    <h2>FICO</h2>
    <textarea rows="10" cols="50"><?=$row['FICO']?></textarea>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
