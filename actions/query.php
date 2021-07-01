<?php
// var_dump($_GET);
require_once("../include/db.php");
require_once("../include/functions.php");
$markName = trim(filter_var($_POST['markName'], FILTER_SANITIZE_STRING));

$sql = "SELECT * FROM `modelsview` WHERE markName = :markName";
$query = $pdo->prepare($sql);
$query->execute(['markName' => $markName]);
$models = $query->fetchAll(PDO::FETCH_OBJ);

// $marks = get_table('modelsview');

if (!$models) {
?>
	<option>...</option>
<?php
}

foreach ($models as $row) {
?>
	<option value="<?= $row->modelName ?>"><?= $row->modelName ?></option>
<?php }
?>