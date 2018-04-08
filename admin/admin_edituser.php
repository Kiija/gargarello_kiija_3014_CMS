<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$id = $_SESSION['user_id'];
	//echo $id;
	$tbl = "tbl_user";
	$col = "user_id";
	$popForm = getSingle($tbl, $col, $id);
	$found_user = mysqli_fetch_array($popForm, MYSQLI_ASSOC);
	//echo $found_user;

	if(isset($_POST['submit'])) {
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$result = editUser($id, $fname, $username, $password, $email);
			$message = $result;
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
<title>CMS Portal</title>
</head>
<body>
	<?php
		include('includes/header.php') ;
	?>
	<h1>Edit Users</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form action="admin_edituser.php" method="post">
	<label>First Name:</label>
	<input type="text" name="fname" value="<?php echo $found_user['user_fname']; ?>
">

	<label>Username:</label>
	<input type="text" name="username" value="<?php echo $found_user['user_name']; ?>
">

	<label>Password:</label>
	<input type="text" name="password" value="<?php echo $found_user['user_pass']; ?>
">

	<label>Email:</label>
	<input type="text" name="email" value="<?php echo $found_user['user_email']; ?>
"><br><br>
	<input type="submit" id="submit" name="submit" value="Edit Account">
	</form>

	<script src="js/foundation.min.js"></script>
	<script src="js/main.js"></script>
	<script>
						$(document).foundation();
					</script>
</body>
</html>
