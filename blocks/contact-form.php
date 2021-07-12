<section class="contact-form">
	<form method="POST" action="">
		<h2 class="text-center">Контактная форма</h2>
		<div class="note text-center alert alert-danger"></div>
		<div class="success text-center"></div>
		<div class="fields">
			<form class="contact-form" method="POST" action="">
				<div class="form-group">
					<label for="name">Ваше имя</label>
					<input type="text" class="form-control" id="name" autofocus="autofocus" placeholder="Василий" value="" pattern="[0-9a-zA-Z]{1,}">
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" class="form-control" id="email" autofocus="autofocus" placeholder="name@example.com" value="name@example.com" pattern="(\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,6})">
				</div>
				<div class=" form-group">
					<label for="tel">Телефон</label>
					<input type="tel" class="form-control" id="tel" placeholder="+7(___)___-__-__" value="+7(___)___-__-__" autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="mess">Сообщение</label>
					<textarea class="form-control" id="mess" rows="3" autofocus="autofocus">Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, aliquid.</textarea>
				</div>
				<div class="text-center">
					<button type="submit" class=" btn btn-primary mt-3" autofocus="autofocus" id="btn_send_mess">Отправить</button>
				</div>
		</div>
	</form>
</section>