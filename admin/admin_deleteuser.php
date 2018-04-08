<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$tbl = "tbl_user";
	$users = getAll($tbl);
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
	<h1>Remove Users</h1>
	<section class="row">
	<?php
		while($row = mysqli_fetch_array($users)) {
			echo "<div class=\"small-6 deleteUsers\">{$row['user_fname']}<a href=\"phpscripts/caller.php?caller_id=delete&id={$row['user_id']}\"><i class=\"fa fa-trash\" aria-hidden=\"true\"></i>
</a></div><br>";
		}
	?>
</section>
	<script src="js/foundation.min.js"></script>
	<script src="js/main.js"></script>
	<script>
						$(document).foundation();
					</script>
</body>
</html>
