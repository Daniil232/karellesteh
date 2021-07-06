<?php
require_once("include/db.php");
require_once("include/functions.php");

$productId = htmlspecialchars($_GET['productId']);

//Если в book_id не число
if (!is_numeric($productId)) {
	exit();
}
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
//Получаем массив товаров
$products = get_table_by_id('productsview', $productId);


foreach ($products as $row) :
	$arrImg = explode(" ", $row->addImg);
?>
	<section id="section-content" class="section-odd">
		<div class="container">
			<div class="row">
				<?php
				$nameProduct = $row->name;
				require_once('blocks/breadcrumb.php');
				?>
				<h3 class="title underline"><?= $row->name ?></h3>
			</div>
			<div class="row">
				<div class="col">
					<div class="gallery">
						<p>
						<div class="image__wrapper">
							<img class="largeImg minimized" id="largeImg" src="<?= $row->img ?>" alt="<?= $row->title ?>">
						</div>
						</p>
						<ul id="thumbs">
							<li>
								<a href="<?= $row->img ?>" title="<?= $row->title ?>"><img src="<?= $row->img ?>"></a>
							</li>
							<?php if ($arrImg[0] != "") { ?>
								<?php foreach ($arrImg as $arr) { ?>
									<li>
										<a href="<?= $arr ?>" title=""><img src="<?= $arr ?>"></a>
									</li>
							<?php }
							} ?>
						</ul>
					</div>
				</div>
				<div class="col">
					<table class="table">
						<tbody>
							<tr>
								<td>Применимость:
								</td>
								<td><?= $row->mark ?></td>
							</tr>
							<tr>
								<td>Применимость:
								</td>
								<td><?= $row->mark ?></td>
							</tr>
							<tr>
								<td>Ариткул производителя:
								</td>
								<td><?= $row->vendorCode ?></td>
							</tr>
						</tbody>
					</table>
					<h3>Связаться с продавцами:</h3>
					<div class="row">
						<div class="col">
							Илья Романов<br>
							<span>
								<i class="fa fa-phone" aria-hidden="true"></i>
								+7(921)0972270
							</span>
							<br>
							<i class="far fa-envelope"></i>
							<a href="#">123@mail.ru</a>
							<br>
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div>
						<div class="col">
							Сергей Сапожников
							<br>
							<span>
								<i class="fa fa-phone" aria-hidden="true"></i>
								+7(931)9654494
							</span>
							<br>
							<i class="far fa-envelope"></i>
							<a href="#">312@gmail.com</a><br><i class="fa fa-map-marker" aria-hidden="true"></i> Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div>
					</div>
					<div class="row mt-3">
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
					</div>
				</div>
			</div>
		</div>
	</section>
<?php endforeach; ?>
<?php
require("blocks/footer.php");
?>
<script type="text/javascript" src="js/gallery.js"></script>