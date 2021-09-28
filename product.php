<?php
require_once("include/db.php");
require_once("include/functions.php");
$home = false;
$productLinks = true;
$productId = htmlspecialchars($_GET['productId']);
//Получаем массив товаров
$product = get_table_by_id('productsview', $productId);
//Если в book_id не число
if (!is_numeric($productId)) {
	exit();
}
foreach ($product as $row) :
	$website_title = $row->name;
endforeach;

require_once('blocks/head.php');
require_once('blocks/header.php');

foreach ($product as $row) :
	$arrImg = explode(" ", $row->addImg);
?>
	<section id="section-content" class="section-odd">
		<div class="container">
			<div class="row">
				<?php
				$categoryName = $row->categoryPart;
				$getCategoryName = preg_replace('/ /', '+', $categoryName);
				$nameProduct = $row->name;
				require_once('blocks/breadcrumb.php');
				?>
				<h3><?= $row->name ?></h3>
			</div>
			<div class="row">
				<div class="col-xs-12 col-md-6">
					<div class="gallery">
						<div class="image__wrapper">
							<img class="largeImg minimized" id="largeImg" src="<?= $row->img ?>" alt="<?= $row->alt ?>">
						</div>
						<div class="thumbs">
							<ul id="thumbs">
								<li>
									<a href="<?= $row->img ?>" title="<?= $row->alt ?>"><img src="<?= $row->img ?>"></a>
								</li>
								<?php if ($arrImg[0] != "") { ?>
									<?php foreach ($arrImg as $arr) { ?>
										<li>
											<a href="<?= $arr ?>" title="<?= $row->alt ?>"><img src="<?= $arr ?>"></a>
										</li>
								<?php }
								} ?>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-md-6">
					<table class="table">
						<tbody>
							<?php if ($row->code != "") { ?>
								<tr>
									<td>Код:
									</td>
									<td><?= $row->code ?></td>
								</tr>
							<?php }
							if ($row->manufacturer != "Не указан") { ?>
								<tr>
									<td>Производитель:
									</td>
									<td><?= $row->manufacturer ?></td>
								</tr>
								<?php }
							$arr = $row->acceptability;
							if (!empty($arr)) {
								$arr = explode(' ', $arr);
								for ($i = 0; $i < count($arr); $i++) {
									if ($arr[$i] == "John") {
										$arr[$i] = "John Deere";
									}
									if ($arr[$i] == "Deere")
										continue; ?>
									<tr>
										<td>Применимость:
										</td>
										<td><?= $arr[$i] ?></td>
									</tr>
							<?php }
							} ?>
							<tr>
								<td>Состояние:
								</td>
								<td><?= $row->condition ?></td>
							</tr>
							<?php if ($row->vendorCode != "") { ?>
								<tr>
									<td>Ариткул производителя:
									</td>
									<td><?= $row->vendorCode ?></td>
								</tr>
							<?php } ?>
							<?php if ($row->addition != "") { ?>
								<tr>
									<td>Примечание:
									</td>
									<td><?= $row->addition ?></td>
								</tr>
							<?php } ?>
							<tr>
								<td>Местонахождение:
								</td>
								<td><?= $row->location ?></td>
							</tr>
						</tbody>
					</table>
					<h3 class="product-contact">Связаться с продавцами:</h3>
					<div class="row">
						<div class="col">
							Олег Баранов<br>
							<span>
								<i class="fa fa-phone fa-lg" aria-hidden="true"></i>
								+7(921)466-56-74
							</span>
							<br>
							<i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
							<a href="#">karellesteh@gmail.com</a>
							<br>
							<i class="fa fa-location-arrow fa-lg" aria-hidden="true"></i>
							Республика Карелия, Петрозаводск, район Томицы
						</div>
						<div class="col">
							Максим Михеев<br>
							<span>
								<i class="fa fa-phone fa-lg" aria-hidden="true"></i>
								+7(921)454-24-04
							</span>
							<br>
							<i class="fa fa-envelope fa-lg" aria-hidden="true"></i>
							<a href="#">karellesteh@gmail.com</a>
							<br>
							<i class="fa fa-location-arrow fa-lg" aria-hidden="true"></i>
							Республика Карелия, Петрозаводск, район Томицы
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
<section class="section-request">
	<div class="container mt-3 pt-5 pb-5">
		<div class="row">
			<div class="col-sm-9 text-center" id="contact-text-message">
				<p>Если Вы не нашли нужную деталь в каталоге, Вы можете обратиться к нашим менеджерам</p>
			</div>
			<div class="col-sm-3 contact-form-buttonShow">
				<button type="submit" id="btnShowContact" class="btn btn-success" name="btnShowContact" onclick="$(this).hide();">
					Оставить заявку
				</button>
			</div>
		</div>
		<div class="row">
			<div id="contact" class="contact note">
				<?php
				require_once('blocks/contact-form.php');
				?>
			</div>
		</div>
	</div>
</section>
<?php
require("blocks/footer.php");
?>
<!-- <script src="js/photoswipe.min.js"></script>
<script src="js/photoswipe-ui-default.min.js"></script>
<script src="js/script-min.js"></script> -->
<script type="text/javascript" src="js/gallery.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script src="https://use.fontawesome.com/b6af12b7e9.js"></script>