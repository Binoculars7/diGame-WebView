

				<?php 








/*



 */

echo "<nav style='color:black;'>";


$real = 1234;

$predict = 3456;


$just = str_split($real);

$sin = str_split($predict);


#$num_digits = strlen($passNo);


#----------------------------------------- Score Making ------------------------------------------------------


$w0 = "";
switch ($just) {
	case $just[0]==$sin[0]:
		$w0 = 1;
		break;
	case $just[0]!==$sin[0]:
		$w0 = 0;
		break;
	default:
		$w0 = 'error';
		break;

		
}



$w1 = "";
switch ($just) {
	case $just[1]==$sin[1]:
		$w1 = 1;
		break;
	case $just[1]!==$sin[1]:
		$w1 = 0;
		break;
	default:
		$w1 = 'error';
		break;

		
}



$w2 = "";
switch ($just) {
	case $just[2]==$sin[2]:
		$w2 = 1;
		break;
	case $just[2]!==$sin[2]:
		$w2 = 0;
		break;
	default:
		$w2 = 'error';
		break;

		
}




$w3 = "";
switch ($just) {
	case $just[3]==$sin[3]:
		$w3 = 1;
		break;
	case $just[3]!==$sin[3]:
		$w3 = 0;
		break;
	default:
		$w3 = 'error';
		break;

		
}



$win = $w0 + $w1 + $w2 + $w3;

#echo $w0 + $w1 + $w2 + $w3;


#echo "<br>";







$s01 = "";
$s02 = "";
$s03 = "";
$s0 = "";

switch ($just) {
	case $just[0]==$sin[1]:
		$s01 = 1;
		break;
	case $just[0]==$sin[2]:
		$s02 = 1;
		break;
	case $just[0]==$sin[3]:
		$s03 = 1;
		break;
	default:
		$s0 = 'error';
		break;

		
}

$ts = $s01 + $s02 + $s03;








$s10 = "";
$s12 = "";
$s13 = "";
$s0 = "";

switch ($just) {
	case $just[1]==$sin[0]:
		$s10 = 1;
		break;
	case $just[1]==$sin[2]:
		$s12 = 1;
		break;
	case $just[1]==$sin[3]:
		$s13 = 1;
		break;
	default:
		$s0 = 'error';
		break;

		
}

$tss = $s10 + $s12 + $s13;










$s20 = "";
$s21 = "";
$s23 = "";
$s0 = "";

switch ($just) {
	case $just[2]==$sin[0]:
		$s20 = 1;
		break;
	case $just[2]==$sin[1]:
		$s21 = 1;
		break;
	case $just[2]==$sin[3]:
		$s23 = 1;
		break;
	default:
		$s0 = 'error';
		break;

		
}

$tsss = $s20 + $s21 + $s23;









$s30 = "";
$s31 = "";
$s32 = "";
$s0 = "";

switch ($just) {
	case $just[3]==$sin[0]:
		$s30 = 1;
		break;
	case $just[3]==$sin[1]:
		$s31 = 1;
		break;
	case $just[3]==$sin[2]:
		$s32 = 1;
		break;
	default:
		$s0 = 'error';
		break;

		
}

$tssss = $s30 + $s31 + $s32;




$total = $ts + $tss + $tsss + $tssss;

#echo $total;


echo "<br>";


echo $win .'-'. $total;


if ($win == 4) {
	
}

	
echo "</nav>";


























?>