<section class="bread mt-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.php">Главная</a></li>
			<li class="breadcrumb-item"><a href="catalog.php">Каталог</a></li>
			<li class="breadcrumb-item"><a href="catalog.php?selectCategorypart=<?= $getCategoryName ?>"><?= $categoryName ?></a></li>
			<li class="breadcrumb-item active text-secondary" aria-current="page"><?= $nameProduct ?></li>
		</ol>
	</nav>
</section>