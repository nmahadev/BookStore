<?php

require 'DBConnect.php';
$bookID = $_GET['bookID'];
$authorID = $_GET['authorID'];
$sql = "insert into bookauthors values(0, '" . $bookID . "', '" . $authorID . "')";
echo modifyDB($sql)."<br>Use back button to return";
?>