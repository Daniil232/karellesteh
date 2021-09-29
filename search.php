<?php
session_start();
require("include/db.php");
require("include/functions.php");
$search = trim(filter_var($_GET['search'], FILTER_SANITIZE_STRING));
$website_title = 'Поиск по слову' . $search . '';
require('blocks/head.php');
require_once('blocks/header.php');

$words = get_search($search);
$sql1 = "SELECT name FROM productsview WHERE name LIKE '%$search%'  GROUP BY name Order By name";
$productDistinct = get_tableSql($sql1);
$i = 1;
?>

<section class="search">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="search__block">
					<h3 class="search__block--title">Поиск по слову "<?php echo $search ?>":</h3>
					<ul class="search__block--list">
						<?php if (!empty($words)) {
							foreach ($productDistinct as $row) {
								$count = 0;
								foreach ($words as $k => $row1) {
									if ($row1["name"] == $row["name"]) {
										$count++;
										if ($count > 1) {
											unset($words[$k]);
											continue;
										}
									}
								}
							}
							foreach ($words as $row) : ?>
								<li class="search__block--item">
									<span class="item_count"><?php echo $i++; ?></span>
									<a href="product.php?productId=<?= $row['id'] ?>">
										<?= $row['name'] . ' ' ?>
									</a>
								</li>
							<?php endforeach;
						} else {
							?>
							<h3 class="search__block--title">По данному запросу ничего не найдено</h3>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<?php
require_once("blocks/footer.php");
?>
<!-- <script type="text/javascript" src="js/main.js"></script> -->