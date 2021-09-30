<section class="news" id="news">
	<div class="container">
		<div class="section_header benefits_header mb-3">
			<h2>Новости</h2>
		</div>
		<div class="card-deck">
			<div class="row">
				<?php foreach ($news as $row) {
					$format = 'Y-m-d H:i:s';
					$date1 = $row->date;
					$date = DateTime::createFromFormat($format, $date1);
				?>
					<div class="col-md-4 col-sm-4 mb-3">
						<div class="card">
							<img class="card-img-top" src="<?= $row->mainImg ?>" alt="">
							<div class="card-body">
								<h5 class="card-title"><?= $row->title ?></h5>
								<p class="card-text"><?= $row->text ?></p>
							</div>
							<div class="card-footer">
								<div class="card-footer-text"><?= $date->format('d-m-Y H:i:s'); ?></div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>