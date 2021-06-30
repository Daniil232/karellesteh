<?php
// Указываем кодировку
header('Content-Type: text/html; charset=utf-8');

$server = "127.0.0.1:3307"; /* имя хоста (уточняется у провайдера), если работаем на локальном сервере, то указываем localhost */
$username = "root"; /* Имя пользователя БД */
$password = "qwerty"; /* Пароль пользователя БД, если у пользователя нет пароля то, оставляем пустым */
$database = "karellesteh"; /* Имя базы данных, которую создали */

// Подключение к базе данных через MySQLi
$dsn = 'mysql:host=' . $server . ';dbname=' . $database;
$pdo = new PDO($dsn, $username, $password);

//Для удобства, добавим здесь переменную, которая будет содержать название нашего сайта
$address_site = "http://localhost/karellesteh/";

//Почтовый адрес администратора сайта
$email_admin = "baranov2394@mail.ru";
