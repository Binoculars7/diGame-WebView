<script type="text/javascript" src="jquery-3.6.0.js"> </script>
<script src="jquery.min.js">
    
</script>

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
      $my_id = $_SESSION['unique_id'];

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
          <p><?php echo $row['status']; ?><span id="getme" style="margin-left: 8em;"><a href="pins.php"><small>Create Pin</small></a></span></p>

        </div>
      </header>
      <div class="chat-box">

        <?php 
            $_SESSION['user_idd'] = $user_id;
            $against_id = $_SESSION['user_idd'];
         ?>

      </div>

          <p class="ero" style='text-align:center; margin:0.8em 0 -0.8em 0; font-size:14px; color:red; font-weight:bold;'></p>

      <form action="#" class="typing-area">

        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
        <input type="text" name="message" id="myTextBox" class="input-field" placeholder="Guess your opponent's pin..." autocomplete="off" maxlength="4">


        <script type="text/javascript">


          $('input.input-field').keyup(function(event){
            if (event.which !== 8 && event.which !== 0 && event.which < 48 || event.which > 57) {
              $(this).val(function(index, value) {
                return value.replace(/\D/g, "");
                
              })
              

            }
          });


          $('input.input-field').keyup(function() {
            var myStr = $('input.input-field').val();
            var myString = myStr.length;

            var myStrs = $('.input-field').val();
            var arrPredict = Array.from(myStrs);
            var arrPredict0 = arrPredict[0];
            var arrPredict1 = arrPredict[1];
            var arrPredict2 = arrPredict[2];
            var arrPredict3 = arrPredict[3];
            var arrLength = arrPredict.length;
            if(arrPredict == ''){
              $('.ero').text('');
              $('#fabs').prop('disabled', true);
            }else if(arrLength < 4){
              $('.ero').text('NOTE: Your guess must be 4-digit');
              $('#fabs').prop('disabled', true);
            }else if(arrPredict0 == "" || arrPredict1 == "" || arrPredict2 == "" || arrPredict3 == ""){
              $('.ero').text('');
            }else if(arrPredict0 == arrPredict1 || arrPredict0 == arrPredict2 || arrPredict0 == arrPredict3 || arrPredict1 == arrPredict0 || arrPredict1 == arrPredict2 || arrPredict1 == arrPredict3 || arrPredict2 == arrPredict0 || arrPredict2 == arrPredict1 || arrPredict2 == arrPredict3 || arrPredict3 == arrPredict0 || arrPredict3 == arrPredict1 || arrPredict3 == arrPredict2){
              $('.ero').text('NOTE: You can\'t repeat a number');
              $('#fabs').prop('disabled', true);
            }else{
              $('.ero').text('');
              $('#fabs').prop('disabled', false);
            }

            

          
            if(myString <= 3){
              //$('button').prop('disabled', true);
              
            }
          });



        </script>
        
        <button id="fabs" name="resub"><i class="fab fa-telegram-plane"></i></button>
      </form>
      
    </section>


  </div>

  <script src="javascript/chat.js"></script>
<script type="text/javascript" src="jquery-3.6.0.js"></script>





</body>
</html>


