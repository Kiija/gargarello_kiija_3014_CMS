<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
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
<title>Edit All</title>
</head>
<body>
	<?php
		include('includes/header.php') ;
	?>
	<h1>Edit Movies</h1>
	<section class="row">

	<?php
// This is obviously not the most efficent/best way of doing this but I could not figure it out
		echo single_edit("tbl_movies","movies_id",15);
		echo single_edit("tbl_movies","movies_id",16);
		echo single_edit("tbl_movies","movies_id",17);
		echo single_edit("tbl_movies","movies_id",18);
		echo single_edit("tbl_movies","movies_id",19);
		echo single_edit("tbl_movies","movies_id",20);
		echo single_edit("tbl_movies","movies_id",22);
		echo single_edit("tbl_movies","movies_id",27);
		echo single_edit("tbl_movies","movies_id",28);
		echo single_edit("tbl_movies","movies_id",29);
		echo single_edit("tbl_movies","movies_id",30);
		echo single_edit("tbl_movies","movies_id",31);
		echo single_edit("tbl_movies","movies_id",32);
		echo single_edit("tbl_movies","movies_id",33);
		echo single_edit("tbl_movies","movies_id",34);
		echo single_edit("tbl_movies","movies_id",35);
		echo single_edit("tbl_movies","movies_id",36);
		echo single_edit("tbl_movies","movies_id",37);
		echo single_edit("tbl_movies","movies_id",38);
		echo single_edit("tbl_movies","movies_id",39);
		echo single_edit("tbl_movies","movies_id",40);
		echo single_edit("tbl_movies","movies_id",41);
		echo single_edit("tbl_movies","movies_id",42);
		echo single_edit("tbl_movies","movies_id",43);
		echo single_edit("tbl_movies","movies_id",44);
		echo single_edit("tbl_movies","movies_id",45);
		echo single_edit("tbl_movies","movies_id",46);
		echo single_edit("tbl_movies","movies_id",47);

	//phpinfo();
	?>
</section>
	<script src="js/foundation.min.js"></script>
	<script src="js/main.js"></script>
	<script>
						$(document).foundation();
					</script>
</body>
</html>
