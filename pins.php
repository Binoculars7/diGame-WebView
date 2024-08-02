<script type="text/javascript" src="jquery-3.6.0.js"> </script>


<?php 
  session_start();
  if(!isset($_SESSION['unique_id'])){
      #echo $_SESSION['user_idd'].'<br>';
      #echo $_SESSION['unique_id'];
    echo "
    <script>
      window.location.href = 'login.php';
    </script>
  ";
  }

include_once "header.php"; 

?>
<body>
  <div class="wrapper">
    <section class="form login">
      <header><small><a style="padding-right: 1em; color:black;" href='../diGameApp/chat.php?user_id=<?php echo $_SESSION['user_idd'];?>' class="back-icon"><i class="fas fa-arrow-left"></i></a> Set 4-Digit Pin</small></header>
      <p id="hy0" style="display: none; margin-top: 0.8em; text-align: justify; font-weight:bold;">NOTE</p>
      <p id="hy" style="display: none; color: red; margin-top: 0.3em; text-align: justify;">You can't change your pin !!! </p> 
      <p id="hy1" style="display: none; margin-top: 0.5em; text-align: justify;">You must complete your current game before you can set a new pin.</p>
      <p id="hy2" style="display: none;"></p>
      <form action="" method="POST" enctype="multipart/form-data" autocomplete="off">


<?php 


    $my_id = $_SESSION['unique_id'];
    $against_id = $_SESSION['user_idd'];
    $mode = 'hidden';

    $connss = mysqli_connect('localhost', 'root', '', 'chatapp');

    $sqlsss = "SELECT `id`, `against_id`, `my_id`, `against_pin`, `my_pin`, `mode` FROM `pins`  WHERE `against_id` = '$against_id' and `my_id` = '$my_id' ORDER BY id ASC LIMIT 1";

    $result = mysqli_query($connss, $sqlsss);



    if($row = mysqli_fetch_array($result)) {
      $modex = $row['mode'];

      if ($modex=='hidden') {
      
      echo " 
      <script>
      $('#hy').css('display', 'block');
      $('#hy').css('display', 'block');
      $('#hy1').css('display', 'block');
      $('#hy0').css('display', 'block');
      $('#hy2').css('display', 'block');
      $('form').css('display', 'none');
      </script>"; 

      }else{
      echo "no";
    }

}



      ?>

        
        <div class="field input">
          <label>Set a pin for your current opponent</label>
          <input class="input-field" type="password" name="passwords" placeholder="Enter your four digit pin" maxlength="4" required>
          <i class="fas fa-eye"></i>
        </div>
        <p class="ero" style='text-align:center; margin:1em 0 0em 0; font-size:14px; color:red; font-weight:bold;'></p>
        <div class="field button">
          <input id="fabs" type="submit" name="submit" value="Save and Continue">
        </div>


<script>
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
});

</script>



<?php 

if (isset($_POST['submit'])) {


      $my_id = $_SESSION['unique_id'];
      $against_id = $_SESSION['user_idd'];
      $my_pin = $_POST['passwords'];
      $against_pin = '0';
      $mode = 'hidden';

    $connss = mysqli_connect('localhost', 'root', '', 'chatapp');

    $sqlsss = "SELECT `id`, `against_id`, `my_id`, `against_pin`, `my_pin`, `mode` FROM `pins`  WHERE `against_id` = '$against_id' and `my_id` = '$my_id' ORDER BY id ASC LIMIT 1";

    $result = mysqli_query($connss, $sqlsss);
  

    if($row = mysqli_fetch_array($result)) {
      

      $connss = mysqli_connect('localhost', 'root', '', 'chatapp');

      $sqlss = "UPDATE `pins` SET `against_id` = '$against_id',`my_id`= '$my_id', `against_pin` = '$against_pin', `my_pin` = '$my_pin', `mode` = '$mode' WHERE `against_id` = '".$row['against_id']."' and `my_id` = '".$row['my_id']."'";

      if (mysqli_query($connss, $sqlss)){
        echo "<p style='color:navy; text-align:center;'>Pin changed successfully</p>";
      }else{
        echo "Error";
      }
  
    }else{


      $cns = mysqli_connect('localhost', 'root', '', 'chatapp');
      
      $sqs = "INSERT INTO pins (against_id, my_id, against_pin, my_pin, mode) VALUES ('$against_id', '$my_id', '$against_pin', '$my_pin', '$mode')";
      mysqli_query($cns, $sqs);

      $_SESSION['miss'] = $mode;

      echo "<p style='color:navy; text-align:center;'>Pin created successfully</p>";
      echo "


      <script>
        window.location.href = '/diGameApp/pins.php';
      </script>

      ";
/*
      <script>
      $('document').ready(function(){
        location.reload('');
        });
      </script>

*/
    }

    mysqli_close($connss);
        

  
/*
      $my_id = $_SESSION['unique_id'];
      $against_id = $_SESSION['user_idd'];
      $my_pin = $_POST['passwords'];
      $against_pin = '0';
      $mode = 'paused';
*/


      }
?>




      </form>

    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script type="text/javascript" src="jquery-3.6.0.js"> </script>
  <!--<script src="javascript/login.js"></script>-->

</body>
</html>
