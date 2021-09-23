<?php
session_start();
require_once("include/db.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
require_once('blocks/carousel.php');
require_once('blocks/benefits.php');
require_once('blocks/description.php');
require_once('blocks/news.php');
require_once("blocks/map.php");
?>
<section id="contact-form">
	<div class="container mt-3 pt-5 pb-5">
		<div class="row">
			<div class="col-sm-9 text-center" id="contact-text-message">
				<p>Если Вы не нашли нужную деталь в каталоге, Вы можете обратиться к нашим менеджерам</p>
			</div>
			<div class="col-sm-3">
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