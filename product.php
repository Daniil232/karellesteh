<?php
require_once("include/db.php");
require_once("include/functions.php");

$productId = htmlspecialchars($_GET['productId']);
// $year_id = htmlspecialchars($_GET['year_id']);

//Если в book_id не число
if (!is_numeric($productId)) {
	exit();
}
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
//Получаем массив товаров
$products = get_table_by_id('productsview', $productId);


foreach ($products as $product) :
?>
	<section id="section-content" class="section-odd">
		<div class="container">
			<div class="row">
				<?php
				$nameProduct = $product->name;
				require_once('blocks/breadcrumb.php');
				?>
				<h3 class="title underline"><?= $product->name ?></h3>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="gallery">
						<div class="gallery-top swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-autoheight">
							<div class="swiper-wrapper">
								<div class="swiper-slide swiper-slide-active">
									<a href="<?= $product->img ?>" class="photoswipe photoswipe-link" rel="gallery" itemprop="contentUrl" data-size="1306x980" data-index="0">
										<img src="<?= $product->img ?>" alt="" class="img-responsive">
									</a>
								</div>
							</div>
							<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<table class="table">
						<tbody>
							<tr>
								<td>Применимость:
								</td>
								<td><?= $product->mark ?></td>
							</tr>
							<tr>
								<td>Применимость:
								</td>
								<td><?= $product->mark ?></td>
							</tr>
							<tr>
								<td>Ариткул производителя:
								</td>
								<td><?= $product->vendorCode ?></td>
							</tr>
						</tbody>
					</table>
					<h3>Связаться с продавцами:</h3>
					<div class="row">
						<div class="col-xs-6">Илья Романов<br><span><i class="fa fa-phone" aria-hidden="true"></i> +7(921)0972270</span><br><i class="fa fa-envelope-o" aria-hidden="true"></i>
							<a href="#">123@mail.ru</a><br><i class="fa fa-map-marker" aria-hidden="true"></i> Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div>
						<!-- <div class="col-xs-6">Сергей Сапожников<br><span class="text-white"><i class="fa fa-phone" aria-hidden="true"></i> +7(931)9654494</span><br><i class="fa fa-envelope-o" aria-hidden="true"></i>
							<a href="#">312@gmail.com</a><br><i class="fa fa-map-marker" aria-hidden="true"></i> Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div> -->
					</div>
					<p class="share-block text-right xs-center">
						<span>Поделиться: </span>
						<a href="http://vk.com/share.php?url=http://kmaskin.ru/shop/parts/612/195/&amp;image=http://kmaskin.ru/upload/shop_5/1/9/5/item_195/small_shop_items_catalog_image195.jpg&amp;noparse=false" class="soc-icon" title="Опубликовать ссылку в ВКонтакте" onclick="return $.popup(this);">
							<i class="fa fa-vk" aria-hidden="true"></i>
						</a>
						<a href="http://www.facebook.com/sharer.php?u=http://kmaskin.ru/shop/parts/612/195/" class="soc-icon" title="Опубликовать ссылку в Facebook" onclick="return $.popup(this);">
							<i class="fa fa-facebook" aria-hidden="true"></i>
						</a>
						<a href="https://twitter.com/share?text=Гидрораспределитель Parker K170LS" class="icon" title="Опубликовать ссылку в Twitter" onclick="return $.popup(this);">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</p>
				</div>
			</div>
		</div>
	</section>
<?php endforeach; ?>
<?php
require("blocks/footer.php");
?>