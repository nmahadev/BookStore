<?php

require 'DBConnect.php';
$title = $_POST['title'];
$isbn = $_POST['isbn'];
$year = $_POST['year'];
$edition = $_POST['edition'];
$cover = $_POST['pic'];
$price = $_POST['price'];
$quantity = $_POST['quantity'];
$date = $_POST['date'];
$review = $_POST['review'];
$rating = $_POST['rating'];
$staffID = $_POST['staff'];
$pubID = $_POST['pubID'];
$subID = $_POST['subID'];
$sql = "insert into books values(0, '" . $title . "', '" . $isbn . "', '" .
  $year ."', '" . $edition . "', '" . $cover . "', '" . $price . "', '" . 
  $quantity . "', '" . $date . "', '" . $review . "', '" . $rating . "', '" .
  $staffID . "', '" . $pubID . "', '" . $subID ."')";
echo modifyDB($sql)."<br>Use back button to return";
?>