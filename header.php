<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Simple Bookstore</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
    <?php
    session_start();
    if (isset($_SESSION['usertype'])) {
      $usertype = $_SESSION['usertype'];
      if ($usertype == 1) {
        $homepage = "admin.php";
        $signupPage = "register.php";
      } else if ($usertype == 2) {
        $homepage = "staff.php";
        $signupPage = "signup.php";
      } else {
        $homepage = "welcome.php";
        $signupPage = "signup.php";
      }
    } else {
      $homepage = "index.php";
      $signupPage = "signup.php";
    }
    ?>
    <div class="container-fluid">
      <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
        <div class="container-fluid row">
          <a class="navbar-brand col-sm-2" href="index.php"> <img src="other/logo.jpg" class="rounded-circle"> </a>
          <div class="col-sm-7">
            <div class="w3-container row">
              <h1 class="w3-cursive">Simple Bookstore</h1>
            </div>
            <ul class="navbar-nav h4 me-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.php">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<?php echo $homepage; ?>">HomePage</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<?php echo $signupPage; ?>">Register</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Help</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item h5" href="#">Why Register</a></li>
                  <li><a class="dropdown-item h5" href="forgotPwd.php">Forgot Password</a></li>
                  <li><a class="dropdown-item h5" href="profile.php">Edit Profile</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="col-sm-2">
            <?php
            if (isset($_SESSION['name'])):
              echo "<h2>Welcome</h2>" . $_SESSION['name'];
              ?>
              <div class="w3-right">
                <form class="form-inline" name="logout" action="logoutAction.php" method="post">
                  <div class="form-group">
                    <button type="submit" class="btn w3-blue">Logout</button>
                  </div>
                </form>
              </div>
            <?php else: ?>          
              <div class="w3-right">
                <form class="form-inline" name="login" action="loginAction.php" method="post">
                  <div class="form-group">
                    <label for="user">User:</label>
                    <input type="text" class="form-control" required placeholder="Enter Username" name="user">
                  </div>
                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" required placeholder="Enter password" name="pwd">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn w3-right w3-blue">Login</button>
                  </div>
                </form>
              </div>
            <?php endif; ?>
          </div>
        </div>
    </div>
  </nav>
</div>
