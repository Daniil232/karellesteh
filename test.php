<?php
session_start();
require_once("include/db.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');
require_once('blocks/header.php');
require_once('blocks/carousel.php');
require_once('blocks/posts.php');
require_once('blocks/contact-form-button.php');
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