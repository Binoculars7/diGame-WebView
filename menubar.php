<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Menu Bar</title>
	<link rel="stylesheet" type="text/css" href="">
</head>
<style type="text/css">
body{
	padding: 0;
	margin: 0;
	max-height: 100vh;
}
.card-body{
	display: flex;
}
.card-body1{
	width: 0%;
	
}
.card-body2{
	width: 100%;
	background: white;
	height: 100vh;

}
.checker_identifier{

}



/* */

@media (max-width:700px){

	body{
	padding: 0;
	margin: 0;
	max-height: 100vh;
}
.card-body{
	display: flex;
}
.card-body1{
	width: 300px;
	background:linear-gradient(to left, orangered, orangered);
	height: 100vh;
	position: absolute;
}
.card-body2{
	width: 70%;
	background: white;
	height: 100vh;

}

#checker:checked  ~ #card-body1{
	margin-left: -20em;
	animation-duration: 5s;
	amination-delay:3s;
}
.checker_identifier, .checker{
	position: fixed;
	margin-left:2em;

}

}



</style>
<body>

<div class="card-body">


<input type="checkbox" name="checker" id="checker" class="checker">

<div class="card-body1" id="card-body1">
	
	
</div>
<label for="checker" class="checker_identifier">Close</label>
<div class="card-body2">
	
</div>

</div>




</body>
</html>