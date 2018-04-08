<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();

	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = $_GET['filter'];
		$getMovies = filterType($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
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

<h1><?php echo "{$_SESSION['user_name']}"?>'s Movie App</h1>

	<section class="row">
	<?php
		if(!is_string($getMovies)){
			while($row = mysqli_fetch_array($getMovies)){
				echo "<div class=\"columns small-12 medium-3\">
					<a href=\"details.php?id={$row['movies_id']}\"><img class=\"movieImg\" src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\"></a>
					<br><br>
					</div>";
			}
		}else{
			echo "<p class=\"error\">{$getMovies}</p>";
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
