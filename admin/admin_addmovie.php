<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);

	require_once('phpscripts/config.php');

	$tbl="tbl_genre";
	$genQuery = getAll($tbl);

	if(isset($_POST['submit'])) {
		$title = $_POST['title'];
		$cover = $_FILES['cover'];
		$year = $_POST['year'];
		$runtime = $_POST['runtime'];
		$storyline = $_POST['storyline'];
		$genre = $_POST['genList'];
		$uploadMovie = addMovie($title, $cover, $year, $runtime, $storyline, $genre);
		$message = $uploadMovie;
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
<title>Add Movie</title>
</head>
<body>
	<?php
		include('includes/header.php') ;
	?>
	<h1>Add a Movie</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label>Movie Title:</label>
		<input name="title" type="text" value="">
		<label>Movie Cover Image:</label>
		<input name="cover" type="file" value="">
		<label>Movie Year:</label>
		<input name="year" type="text" value="">
		<label>Movie Runtime</label>
		<input name="runtime" type="text" value="">
		<label>Movie Storyline</label>
		<input name="storyline" type="text" value="">
		<label>Movie Genre</label>
		<select name="genList">
			<option value="">Please select a genre</option>
			<?php
				while($row = mysqli_fetch_array($genQuery)){
					echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
				}
			?>
		</select><br><br><br>
		<input id="submit" type="submit" name="submit" value="Add Movie">
	</form>
	<script src="js/foundation.min.js"></script>
	<script src="js/main.js"></script>
	<script>
						$(document).foundation();
					</script>
</body>
</html>
