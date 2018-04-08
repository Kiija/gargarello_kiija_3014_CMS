<?php
	require_once('phpscripts/config.php');
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$tbl = "tbl_movies";
		$col = "movies_id";
		$getSingle = getSingle($tbl, $col, $id);
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
<title>Details</title>
</head>
<body>
	<section class="row details">
	<?php
		if(!is_string($getSingle)){
			$row = mysqli_fetch_array($getSingle);
			echo "<div class=\"columns small-12 medium-6\">
			<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\"></div>
			<div class=\"columns small-12 medium-5\">
				<h5>{$row['movies_title']}</h5>
				<h6>{$row['movies_year']}&nbsp&nbsp | &nbsp&nbsp{$row['movies_runtime']}</h6>
				<p>{$row['movies_storyline']}</p>
				<a href=\"admin_index.php\" class=\"backHome\"><i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i>
</a></div>";
		}else{
			echo "<p class=\"error\">{$getSingle}</p>";
		}
	?>
</section>
</body>
</html>
