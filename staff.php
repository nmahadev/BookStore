<?php 
include 'header.php'; 
if (!(isset($_SESSION['name']))) {
  header("Location:index.php");
  exit;
}
?>
</body>
</html>