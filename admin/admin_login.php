<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== "") {
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill in the required fields";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="css/app.css" />
<!--Google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<!--FontAwesome CDN-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>CMS Portal Login</title>
</head>
<body>
	<h1>Movie Directory Login</h1>
	<div class="passError"><?php if(!empty($message)){echo $message;} ?></div>
	<form action="admin_login.php" method="post">
		<label>Username:</label>
		<input type="text" name="username" value="">
		<label>Password:</label>
		<input type="text" name="password" value="">
		<br><br>
		<input type="submit" id="submit" name="submit" value="Login">
	</form>
	<script src="js/foundation.min.js"></script>
	<script src="js/main.js"></script>
	<script>
						$(document).foundation();
					</script>
</body>
</html>
