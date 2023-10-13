<?php
// Указываем кодировку
header('Content-Type: text/html; charset=utf-8');

//$server = "127.0.0.1:3307"; /* имя хоста (уточняется у провайдера), если работаем на локальном сервере, то указываем localhost */
$server = "localhost"; /* имя хоста (уточняется у провайдера), если работаем на локальном сервере, то указываем localhost */
$username = "root"; /* Имя пользователя БД */
$password = ""; /* Пароль пользователя БД, если у пользователя нет пароля то, оставляем пустым */
$database = "karellesteh"; /* Имя базы данных, которую создали */


// Подключение к базе данных через MySQLi
$dsn = 'mysql:host=' . $server . ';dbname=' . $database;
try {
	$con = new PDO($dsn, $username, $password);
	// set the PDO error mode to exception
	$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	echo "Database connection failed: " . $e->getMessage();
}

//Для удобства, добавим здесь переменную, которая будет содержать название нашего сайта
$address_site = "http://karellesteh/";

//Почтовый адрес администратора сайта
$email_admin = "baranov2394@mail.ru";
