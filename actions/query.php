<?php
// var_dump($_GET);
require_once("../include/db.php");
require_once("../include/functions.php");
$markName = trim(filter_var($_POST['markName'], FILTER_SANITIZE_STRING));

$sql = "SELECT * FROM `modelsview` WHERE markName = :markName";
$query = $pdo->prepare($sql);
$query->execute(['markName' => $markName]);
$models = $query->fetchAll(PDO::FETCH_OBJ);

if (!$models) {
?>
	<option>...</option>
<?php
} else {
?>
	<option>...</option>
	<?php
	foreach ($models as $row) {
	?>
		<option value="<?= $row->modelName ?>"><?= $row->modelName ?></option>
<?php }
} ?>