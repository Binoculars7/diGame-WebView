<script type="text/javascript" src="jquery-3.6.0.js"></script>

<?php
	session_start();
	include_once "php/config.php";
	$user_opp = $_SESSION['user_idd'];
	$user_me = $_SESSION['unique_id'];
	$delSql1 = "DELETE FROM `messages` WHERE `incoming_msg_id` = '$user_opp' and `outgoing_msg_id` = '$user_me'";
	$delSql2 = "DELETE FROM `messages` WHERE `incoming_msg_id` = '$user_me' and `outgoing_msg_id` = '$user_opp'";
	$delQuery1 = mysqli_query($conn, $delSql1);
	$delQuery2 = mysqli_query($conn, $delSql2);

	$delSql3 = "DELETE FROM `pins` WHERE `against_id` = '$user_opp' and `my_id` = '$user_me'";
	$delSql4 = "DELETE FROM `pins` WHERE `my_id` = '$user_opp' and `against_id` = '$user_me'";
	$delQuery3 = mysqli_query($conn, $delSql3);
	$delQuery4 = mysqli_query($conn, $delSql4);


	echo "<script>
	window.location.href = 'chat.php?user_id=".$user_opp."';
	</script>";



?>