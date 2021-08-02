<section class="section-request" style="background: black;">
	<div class="container mt-3 pt-5 pb-5">
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
				require('blocks/contact-form.php');
				?>
			</div>
		</div>
	</div>
</section>