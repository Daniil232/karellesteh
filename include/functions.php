<?php

function get_productsview($limit, $offset)
{
	global $link;
	$sql = "SELECT * FROM `productsview` LIMIT $limit OFFSET $offset";
	$result = mysqli_query($link, $sql);
	$products = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $products;
}
function dropdownCreate($titleselect, $namearia, $nameid, $array)
{
	echo '
		<div class="col-md-2">
		<label for="' . $nameid . '" class="form-label">' . $titleselect . '</label>
		<select class="form-select" id="' . $nameid . '">
		<option selected>' . $namearia . '</option>';
	foreach ($array as $arr) :
		echo  '<option value="' . $arr['name'] . '">' . $arr['name'] . '</option>';
	endforeach;
	echo '</optgroup></select></div>';
}
function get_products($limit, $offset)
{
	global $link;
	$sql = "SELECT * FROM `products` LIMIT $limit OFFSET $offset";
	$result = mysqli_query($link, $sql);
	$products = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $products;
}

function get_categoryparts()
{
	global $link;
	$sql = "SELECT * FROM `categoryparts`";
	$result = mysqli_query($link, $sql);
	$categoryparts = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $categoryparts;
}

function get_marks()
{
	global $link;
	$sql = "SELECT * FROM `marks`";
	$result = mysqli_query($link, $sql);
	$marks = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $marks;
}

function get_models()
{
	global $link;
	$sql = "SELECT * FROM `models`";
	$result = mysqli_query($link, $sql);
	$models = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $models;
}

function get_conditions()
{
	global $link;
	$sql = "SELECT * FROM `conditions`";
	$result = mysqli_query($link, $sql);
	$conditions = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $conditions;
}

function get_categories()
{
	global $link;
	$sql = "SELECT * FROM `categories`";
	$result = mysqli_query($link, $sql);
	$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $categories;
}

function get_product_by_id($product_id)
{
	global $link;
	$sql = "SELECT * FROM product WHERE id = " . $product_id;
	$result = mysqli_query($link, $sql);
	$product = mysqli_fetch_assoc($result);
	return $product;
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
