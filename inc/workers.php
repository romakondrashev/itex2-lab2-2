<?php
require "./connection.php";


$sqlSelect = "SELECT * FROM department";

$chiefs = array();

foreach ($dbh->query($sqlSelect) as $chief) {
    $chiefsArr = array(
        'id' => $chief['ID_Department'],
        'name' => $chief['chief']
    );
    $chiefs[] = $chiefsArr;
}

