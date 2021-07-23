<?php
function get_tableLimit($nameTable, $limit, $offset)
{
	global $con;
	$sql = "SELECT * FROM `" . $nameTable . "` LIMIT $limit OFFSET $offset";
	$query = $con->prepare($sql);
	$query->execute();
	$obj = $query->fetchAll(PDO::FETCH_OBJ);
	return $obj;
}
function get_tableSql($sql)
{
	global $con;
	$query = $con->prepare($sql);
	$query->execute();
	$obj = $query->fetchAll(PDO::FETCH_ASSOC);
	return $obj;
}
function get_table($nameTable)
{
	global $con;
	$sql = "SELECT * FROM `" . $nameTable . "`";
	$query = $con->prepare($sql);
	$query->execute();
	$obj = $query->fetchAll(PDO::FETCH_OBJ);
	return $obj;
}
function dropdownCreate($titleselect, $namearia, $nameid, $array)
{
	echo '
		<div class="col-md-5 col-lg-3">
		<label for="' . $nameid . '" class="form-label">' . $titleselect . ':</label>
		<select class="form-select" name="' . $nameid . '" id="' . $nameid . '">
		<option selected>' . $namearia . '</option>';
	foreach ($array as $arr) :
		echo  '<option value="' . $arr->name . '">' . $arr->name . '</option>';
	endforeach;
	echo '</select></div>';
}

function get_table_by_id($nameTable, $id)
{
	global $con;
	$sql = "SELECT * FROM `" . $nameTable . "` WHERE id = " . $id;
	$query = $con->prepare($sql);
	$query->execute();
	$obj = $query->fetchAll(PDO::FETCH_OBJ);
	return $obj;
}


// function get_books_by_year($year_id) {
// 	global $link;
// 	$year_id = mysqli_real_escape_string($link, $year_id);
// 	$sql = 'SELECT * FROM books WHERE year_id = "'.$year_id.'"';
// 	$result = mysqli_query($link, $sql);
// 	$book = mysqli_fetch_all($result, MYSQLI_ASSOC);	
// 	return $book;
// }

// function get_year_title($year_id) {

// 	global $link;

// 	$year_id = mysqli_real_escape_string($link, $year_id);

// 	$sql = 'SELECT year FROM years WHERE year_id = "'.$year_id.'"';

// 	$result = mysqli_query($link, $sql);

// 	$year = mysqli_fetch_assoc($result);
	
// 	return $year['year'];
// }

// function get_search($search) {
// 	$sql_seacrh = "";

// 	$arraywords = explode(" ", $search);

// 	foreach($arraywords as $key => $value) {
// 		if(isset($arraywords[$key - 1])) $sql_search .= " OR ";
// 		$sql_search .= "(name LIKE '%$value%' OR `author` LIKE '%$value%')";
// 	}
// 	global $link;

// 	$sql = "SELECT * FROM `books` WHERE $sql_search";
// 	$result = mysqli_query($link, $sql);

// 	$search = mysqli_fetch_all($result, MYSQLI_ASSOC);

// 	return $search;
// }
