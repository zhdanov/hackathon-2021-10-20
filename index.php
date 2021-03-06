<?php

require(__DIR__ . '/bootstrap.php');

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Заявки</title>
  </head>
  <body style="padding: 10px;">
    <h1>Заявки</h1>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">FICO</th>
      <th scope="col">ФИО</th>
      <th class="text-center" scope="col">Интервью</th>
      <th scope="col">Снапшот</th>
    </tr>
  </thead>
  <tbody>
<?php foreach (\model\fico\find($dbh_bank, $clt_mongo, $dbh_public) as $row) { ?>
    <tr>
    <th scope="row"><a href="/actions/app-get.php?app_id=<?=$row['id']?>"><?=$row['id']?></a></th>
      <td<?=((int)$row['fico'])>=60?' style="color: green;font-weight:bold;"':''?><?=((int)$row['fico'])<=15?' style="color: red;"':''?>><?=$row['fico']?></td>
      <td><?=$row['fio']?></td>
      <td class="text-center"><?=$row['interview']?$row['interview']:'-'?></td>
      <td>
<?php if($row['snapshot']) { ?>
        <a href="/actions/snapshot-get.php?app_id=<?=$row['id']?>">смотреть</a>
<?php } else { ?>
        <form method="POST" action="/actions/snapshot-save.php">
          <input type="hidden" name="app_id" value="<?=$row['id']?>" />
          <button class="btn btn-primary" type="submit">Сохранить</button>
        </form>
<?php } ?>
      </td>
    </tr>
<?php } ?>
  </tbody>
</table>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
