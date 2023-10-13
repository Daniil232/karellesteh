<?php

$post = (!empty($_POST)) ? true : false;


if ($post) {
	$name = trim(filter_var($_POST['name'], FILTER_SANITIZE_STRING));
	$email = trim(filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
	$tel = trim(filter_var($_POST['tel'], FILTER_SANITIZE_STRING));
	$mess = trim(filter_var($_POST['mess'], FILTER_SANITIZE_STRING));
	$error = '';

	if (!$name || strlen($name) < 2) {
		$error .= "Пожалуйста введите ваше Имя<br />";
	}

	if (!$email || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$error .= "Пожалуйста введите email<br />";
	}

	if (!preg_match('/\+7\s?[\(]{0,1}9[0-9]{2}[\)]{0,1}\s?\d{3}[-]{0,1}\d{2}[-]{0,1}\d{2}/', $tel)) {
		$error .= "Пожалуйста введите ваш телефон<br />";
	}

	if (!$mess || strlen($mess) < 4) {
		$error .= "Введите ваше сообщение<br />";
	}

	if (!$error) {
		$subject = "Новая заявка с сайта karellesteh.ru";
		$message1 = "\n\nИмя: " . $name . "\n\nТелефон: " . $tel . "\n\nE-mail: " . $email . "\n\nСообщение: " . $mess . "\n\n";
		$header = "Content-Type: text/plain; charset=utf-8\n";
		$header .= "From: Новая заявка baranov2394@karellesteh.ru>\n\n";
		$mail = mail("baranov2394@karellesteh.ru", $subject, $message1, $header);
		if ($mail) {
			echo 'OK';
		}
	} else {
		echo '<div class="notification_error ">' . $error . '</div>';
	}
}
