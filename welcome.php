<?php 
include 'header.php';
if (!(isset($_SESSION['usertype'])) or $usertype != 3) {
  header("Location:index.php");
  exit;
}
?>

