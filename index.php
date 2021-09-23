<?php
session_start();
require("include/db.php");
$website_title = 'Главная страница';
require('blocks/head.php');
require('blocks/header.php');
?>
<section class="contact-form">
	<div class="container">
		<div class="row">
			<div id="contact" class="contact">
				<?php
				require('blocks/contact-form.php');
				?>
			</div>
		</div>
	</div>
</section>
<?php
// require_once ('blocks/carousel.php');
// require_once ('blocks/posts.php');
// require_once ('blocks/blog.php');
// require_once("blocks/map.php");
require("blocks/footer.php");
?>
<script type="text/javascript" src="js/main.js"></script>