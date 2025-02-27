<?php

require 'DBConnect.php';
$fname = $_GET['fname'];
$lname = $_GET['lname'];
$email = $_GET['email'];
$sql = "insert into authors values(0, '" . $fname . "', '" . $lname . "', '" . $email . "')";
echo modifyDB($sql)."<br>Use back button to return";
?>