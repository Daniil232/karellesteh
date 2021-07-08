<?php
session_start();
require_once("include/db.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
require_once('blocks/carousel.php');
require_once('blocks/posts.php');
?>
<section class="section-request" style="background: black;">
	<div class=" container mt-3 mb-3 pt-5 pb-5">
		<div class="row">
			<div class="col-sm-10 text-center">
				<p>Если Вы не нашли нужную деталь в каталоге, Вы можете обратиться к нашим менеджерам</p>
			</div>
			<div class="col-sm-2">
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
// require_once('blocks/carousel.php');
// require_once('blocks/posts.php');
require_once('blocks/blog.php');
require_once("blocks/footer.php");
?>
<script>
	$(document).ready(function() {
		$("#btnShowContact").on('click', function() {
			$("#contact").removeClass("note");
			const el = document.getElementById('contact');
			el.scrollIntoView({
				behavior: "smooth",
				block: "center",
				inline: "center"
			});
		});
	})
</script>
<script type="text/javascript" src="js/main.js"></script>