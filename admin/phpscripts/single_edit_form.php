<?php

	function single_edit($tbl,$col,$id) {
		$result = getSingle($tbl, $col, $id);
		$getResult = mysqli_fetch_array($result);
		//echo mysqli_num_fields($result);
		echo "<form action=\"phpscripts/editall.php\" method=\"post\" class=\"editForm columns small-12 medium-4\">";
		echo "<span class=\"hidden\"><input hidden name=\"tbl\" value=\"{$tbl}\">";
		echo "<input hidden name=\"col\" value=\"{$col}\">";
		echo "<input hidden name=\"id\" value=\"{$id}\"></span>";
		for($i=0; $i<mysqli_num_fields($result); $i++) {
			$dataType = mysqli_fetch_field_direct($result,$i);
			$fieldname = $dataType -> name;
			//echo $fieldname."<br>";
			$fieldtype = $dataType -> type;
			//echo $fieldtype."<br>";
			if($fieldname != $col){
				echo "<label>{$fieldname}</label><br>";
				if($fieldtype != "252"){
					echo "<input type=\"text\" name=\"{$fieldname}\" value=\"{$getResult[$i]}\">";
				}else{
					echo "<textarea class=\"storylineEdit\" rows=\"8\" name=\"{$fieldname}\">{$getResult[$i]}</textarea>";
				}
			}
		}
		echo "<input type=\"submit\" class=\"saveContent\" name=\"submit\" value=\"Save Content\">";
		echo "</form>";
	}
?>
