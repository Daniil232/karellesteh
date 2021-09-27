<?php
session_start();
require("include/db.php");
require("include/functions.php");
$website_title = 'PHP блог';
require('blocks/head.php');
require('blocks/header.php');
$services = get_table('services');
?>
<section class="services">
	<div class="container">
		<div class="services-title">
			<div class="row">
				<h1>Список услуг предоставляемой нашей фирмой</h1>
			</div>
		</div>
		<div class="services-table">
			<div class="table-responsive">
				<table class="table align-middle">
					<thead>
						<tr>
							<th scope="col">№ п/п</th>
							<th scope="col">Наименование</th>
							<th scope="col">Цена</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$i = 1;
						foreach ($services as $row) :
						?>
							<tr>
								<td scope="row">
									<?= $i++ ?>
								</td>
								<td>
									<?= $row->name ?>
								</td>
								<td><?= $row->price ?></td>
							</tr>
						<?php
						endforeach; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>

<?php
require("blocks/footer.php");
?>