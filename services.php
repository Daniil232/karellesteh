<?php
session_start();
require("include/db.php");
require("include/functions.php");
$website_title = 'Услуги';
require('blocks/head.php');
require('blocks/header.php');
$services = get_table('services');
?>
<section class="services">
	<div class="container">
		<div class="services-title">
			<div class="row">
				<h1>Перечень услуг</h1>
			</div>
		</div>
		<div class="services-table">
			<div class="table-responsive-sm">
				<table class="table table-sm table-hover table-bordered">
					<thead bgcolor="#33A64B">
						<tr>
							<th scope="col">№ п/п</th>
							<th scope="col">Наименование</th>
						</tr>
					</thead>
					<tbody>
					<!-- <ul>                                
     <li>1ый маркированного списка</li>        
     <li>2ой маркированного списка            
         <ol>                            
             <li>1ый нумерованного списка</li>    
             <li>2ой нумерованного списка</li>    
             <li>3ий нумерованного списка</li>    
         </ol>                            
     </li>                            
     <li>3ий маркированного списка</li>        
</ul> -->



						<?php
						foreach ($services as $row) :
						?>
							<tr>
								<td scope="row">
									<?= $row->number ?>
								</td>
								<td>
									<?= $row->name ?>
								</td>
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
require("blocks/request.php");
require("blocks/footer.php");
?>
<script type="text/javascript" src="js/gallery.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script src="https://use.fontawesome.com/b6af12b7e9.js"></script>