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
    <section class="chat-area">
      <header>
        <?php 
          $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
          $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
          if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
          }else{
            echo "
            <script>
              window.location.href = 'users.php';
            </script>
          ";
          }
        ?>
        <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <img src="php/images/<?php echo $row['img']; ?>" alt="">
        <div class="details">
          <span><?php echo $row['fname']. " " . $row['lname'] ?></span>
          <p><?php echo $row['status']; ?></p>
          <span></span>
        </div>
      </header>
      <div class="chat-box">


      </div>
      <form action="#" class="typing-area">
        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
        <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off" maxlength="4" pattern="^\d{4}$">

<!--

        <script type="text/javascript">
          
          
          $(document).ready(function(){
            var regex = /^\d*[.]?\d*$/;

            $(".message").on("input", function(){

                var inputVal = $(this).val();

                if (regex.test(inputVal)) {
                  $(this).removeClass('error').addClass('success');
                } else{
                  $(this).removeClass('success').addClass('error');
                }
            });
          });


        </script>
-->

        <button><i class="fab fa-telegram-plane"></i></button>
      </form>
    </section>
  </div>

  <script src="javascript/chat.js"></script>

</body>
</html>
