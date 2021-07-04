<?php
session_start();
$users = 'admin';
$pass = '123';
 if($_POST['submit']){
 if($users == $_POST['users'] AND $pass == ($_POST['pass']))
{
 $_SESSION['admin'] = $users;
 header("HTTP/1.1 301 Moved Permanently");
 header("Location: master.php");
 exit;
 }
else echo 'Неверное имя пользователя';
} 
       

?>  