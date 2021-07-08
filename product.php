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
						<div class="image__wrapper">
							<img class="largeImg minimized" id="largeImg" src="<?= $row->img ?>" alt="<?= $row->title ?>">
						</div>
						<div class="thumbs">
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
								<i class="fa fa-phone fa-lg" aria-hidden="true"></i>
								+7(921)0972270
							</span>
							<br>
							<i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
							<a href="#">123@mail.ru</a>
							<br>
							<i class="fa fa-location-arrow fa-lg" aria-hidden="true"></i>
							Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div>
						<div class="col">
							Сергей Сапожников
							<br>
							<span>
								<i class="fa fa-phone fa-lg" aria-hidden="true"></i>
								+7(931)9654494
							</span>
							<br>
							<i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
							<a href="#">312@gmail.com</a>
							<br>
							<i class="fa fa-location-arrow fa-lg" aria-hidden="true"></i>
							Санкт-Петербург, Ленинградская область,пос. Стеклянный
						</div>
					</div>
					<div class="row mt-3">
						<span>Поделиться: </span>
						<?php
						$title = 'Заголовок';
						$url = 'http://yandex.ru';
						$hashtags = 'теги';
						$summary = 'Короткое описание';
						$image_url = 'https://webref.ru/assets/images/font-awesome/fa-03.png';
						$description = 'Короткое описание';
						?>
						<div class="d-flex justify-content-start" id="social">
							<div class="vk">
								<a href="http://vkontakte.ru/share.php?url=<?php echo urlencode($url); ?>&title=<?php echo $title; ?>&description=<?php echo $description; ?>&image=<?php echo $image_url; ?>&noparse=true" onclick="window.open(this.href, this.title, 'toolbar=0, status=0, width=548, height=325'); return false" title="Сохранить в Вконтакте" target="_parent">
									<span style="font-size: 32px; color: #597da3; padding-left: 0px;">
										<i class="fa fa-vk fa-lg"></i>
									</span>
								</a>
							</div>
							<div class="twit">
								<a href="http://twitter.com/share?text=<?php echo $title; ?>&related=truemisha&hashtags=<?php echo $hashtags ?>&url=<?php echo $url; ?>" title="Поделиться ссылкой в Твиттере" onclick="window.open(this.href, this.title, 'toolbar=0, status=0, width=548, height=325'); return false" target="_parent">
									<span style="font-size: 32px; color: #00acee;">
										<i class="fa fa-twitter fa-lg"></i>
									</span>
								</a>
							</div>
							<div class="fb">
								<a href="http://www.facebook.com/sharer.php?s=100&p[url]=<?php echo urlencode($url); ?>&p[title]=<?php echo $title ?>&p[summary]=<?php echo $summary ?>&p[images][0]=<?php echo $image_url ?>" onclick="window.open(this.href, this.title, 'toolbar=0, status=0, width=548, height=325'); return false" title="Поделиться ссылкой на Фейсбук" target="_parent">
									<span style="font-size: 32px; color: #3b5998;">
										<i class="fa fa-facebook-square fa-lg"></i>
									</span>
								</a>
							</div>
							<div class="ok">
								<a href="http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl=<?php echo urlencode($url); ?>&title=<?php echo $title; ?>&description=<?php echo $description; ?>&image=<?php echo $image_url; ?> title=" Рассказать в Одноклассниках" target="_parent">
									<span style="font-size: 32px; color: #ed812b;">
										<i class="fa fa-odnoklassniki-square fa-lg"></i>
									</span>
								</a>
							</div>
						</div>
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
<script src="https://use.fontawesome.com/b6af12b7e9.js"></script>