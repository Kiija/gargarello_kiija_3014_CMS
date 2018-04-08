<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();

	$tbl = "tbl_movies";
	$movies = getAll($tbl);
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
	<h1>Delete Movies</h1>
	<section class="row">
	<?php
		while($row = mysqli_fetch_array($movies)) {
			echo "<div class=\"columns small-12 medium-3 deleteMovie\">
				<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<a href=\"phpscripts/caller.php?caller_id=deletemovie&id={$row['movies_id']}\"><div class=\"deleteOverlay\"><i class=\"garbage fa fa-trash fa-5x\" aria-hidden=\"true\"></i></div></a>
			<br><br>
			</div>";
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
