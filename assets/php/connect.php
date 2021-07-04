
<?php
$conn = new mysqli("localhost", "root", "qwerty", "promservice");
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}





?>