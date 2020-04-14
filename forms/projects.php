<?php

require "../connection.php";

$project = $_GET['project'];
$targetDate = $_GET['targetDate'];
$targetTime = $_GET['targetTime'];

$sqlSelect = "SELECT `description` FROM `work` WHERE `FID_Projects` = :id and `date` < :date or `FID_Projects` = :id and `date` = :date and `time_end` < :time";

$sth = $dbh->prepare($sqlSelect, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
$sth->execute(array(':id' => $project, ':date' => $targetDate, ':time' => $targetTime));

foreach ($sth as $index => $row) {
	echo '<tr>';
    echo '<td>'. ++$index .'</td>';
    echo '<td>'. $row['description'] .'</td>';
    echo '</tr>';
}


