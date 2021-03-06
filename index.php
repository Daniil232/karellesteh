<?php
session_start();
$home = true;
require("include/db.php");
require("include/functions.php");
$news = get_table('news');
$website_title = 'Кареллестех главная';
require_once('blocks/head.php');
require_once('blocks/header.php');
require_once('blocks/carousel.php');
require_once('blocks/benefits.php');
require_once('blocks/description.php');
require_once('blocks/news.php');
?>
<section class="map" id="map">
	<div class="section_header benefits_header">
		<h2>Где нас найти</h2>
	</div>
	<?php
	require_once("blocks/map.php");
	?>
</section>

<section id="contact-form">
	<div class="container mt-3 pt-3 pb-3">
		<div class="row">
			<div class="col-sm-9 text-center" id="contact-text-message">
				<p>По всем интересующимися вопросами вы можете обратиться к нашим менеджерам</p>
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
require_once("blocks/footer.php");
?>
<script type="text/javascript" src="js/main.js"></script>