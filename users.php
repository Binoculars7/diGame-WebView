<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    echo "
    <script>
      window.location.href = 'login.php';
    </script>
  ";
  }
?>
<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="users">
      <header>
        <div class="content">
          <?php 
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
          <img src="php/images/<?php echo $row['img']; ?>" alt="">
          <div class="details">
            <span><?php echo $row['fname']. " " . $row['lname'] ?></span>
            <p><?php echo $row['status']; ?></p>
          </div>
        </div>
        <a href="" class="logout" style="margin-left:3.5em;"><i class="fa fa-cog"></i></a>
        <a href="php/logout.php?logout_id=<?php echo $row['unique_id']; ?>" class="logout"><i class="fa fa-power-off"></i></a>
      </header>
      <div class="search">
        <span class="text">Select a player to start game</span>
        <input type="text" placeholder="Enter user ID to search...">
        <button><i class="fas fa-search"></i></button>
      </div>
      <div class="users-list">
  
      </div>
    </section>
  </div>

  <script src="javascript/users.js"></script>

</body>
</html>
