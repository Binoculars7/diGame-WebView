<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    echo "
    <script>
      window.location.href = 'users.php';
    </script>
  ";
  }
?>

<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="form signup">
      <header>Dead & Injured</header>
      <form action="php/signup.php" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>

          <div class="field input">
            <label>Username</label>
            <input type="text" name="fname" placeholder="Username" required>
          </div>
  
        <div class="field input">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="field input">
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter new password" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field image">
          <label>Profile Image</label>
          <input type="file" name="image" accept="image/x-png,image/gif,image/jpeg,image/jpg" required>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Create Account">
        </div>
      </form>
      <div class="link">Already signed up? <a href="login.php">Login now</a></div>
    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/signup.js"></script>

</body>
</html>
