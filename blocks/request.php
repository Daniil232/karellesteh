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
	<!-- <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

		<div class="pswp__bg"></div>
		<div class="pswp__scroll-wrap">

			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>

			<div class="pswp__ui pswp__ui--hidden">

				<div class="pswp__top-bar">

					<div class="pswp__counter"></div>

					<button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
					<button class="pswp__button pswp__button--share" title="Share"></button>
					<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
					<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
					<div class="pswp__share-tooltip"></div>
				</div>

				<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
				</button>

				<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
				</button>

				<div class="pswp__caption">
					<div class="pswp__caption__center"></div>
				</div>
			</div>
		</div>
	</div> -->
</section>