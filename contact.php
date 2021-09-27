<?php
session_start();
$home = false;
require("include/db.php");
require("include/functions.php");
$news = get_table('news');
$website_title = 'Контакты';
require_once('blocks/head.php');
require_once('blocks/header.php');
?>
<section class="contact" id="contact">
	<div class="container">
		<div class="section_header benefits_header">
			<h2>Контакты</h2>
		</div>
		<div class="contact__block-text">
			<p><b>Наш адрес: </b> Петрозаводск, Республика Карелия, г.Петрозаводск, р-н Томицы, 13-км</p>
			<p><b>График работы: </b> понедельник - суббота. Часы работы: 09.00 - 18.00</p>
			<p><b>Тел.: </b> +7 (921) 466-56-74, +7 (495) 443-77-69</p>
			<p><b>Почта: </b>karellesteh@gmail.com</p>
			<p><b>Реквизиты: </b>ИНН 1001322059,ОГРН 1161001064982</p>
			<p><b>Юр.адрес: </b>185002, республика Карелия, г. Петрозаводск, ул. Чкалова (Перевалка р-н) , д. 47, кв. 29</p>
		</div>

		<div class="map-api">
			<div class="map-api__block" style="position: relative; overflow:hidden;">
				<a href="https://yandex.ru/maps/org/karellestekh/78209035476/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Кареллестех</a>
				<a href="https://yandex.ru/maps/18/petrozavodsk/category/forestry_equipment/184106574/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:14px;">Лесозаготовительная техника в Петрозаводске</a>
				<iframe src="https://yandex.ru/map-widget/v1/-/CCUenADkOA" width="100%" height="600" frameborder="1" allowfullscreen="true" style="position:relative;">
				</iframe>
			</div>
		</div>
	</div>
</section>
<?php
require_once("blocks/footer.php");
