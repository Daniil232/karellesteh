<?php
session_start();
require_once("include/db.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
?>
<main class="container">
	<div class="row">
		<?php
		require_once('blocks/contact-form.php');
		?>
	</div>
</main>
<?php
// require_once ('blocks/carousel.php');
// require_once ('blocks/posts.php');
// require_once ('blocks/blog.php');
require_once("blocks/footer.php");
?>
<script type="text/javascript" src="js/main.js"></script>