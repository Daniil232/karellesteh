<?php
 include 'connect.php';

$name=mysqli_real_escape_string($conn, $_REQUEST['name']); //client
$surname=mysqli_real_escape_string($conn, $_REQUEST['surname']); //client
$patr=mysqli_real_escape_string($conn, $_REQUEST['patr']);//client
$address=mysqli_real_escape_string($conn, $_REQUEST['address']);//client
$phone=mysqli_real_escape_string($conn, $_REQUEST['phone']);//clien
$mess=mysqli_real_escape_string($conn, $_REQUEST['mess']);//Zakaz
$oborudov=mysqli_real_escape_string($conn, $_REQUEST['model']);//Zakaz
$email=mysqli_real_escape_string($conn, $_REQUEST['email']);//Client
 
$sql = "INSERT INTO Client (name, surnameclient, patron, address, phone, email) VALUES ('$name', '$surname', '$patr', '$address', '$phone', '$email')";

$sql3 = "INSERT INTO Zakaz (mess, oborudov, surnamecli) VALUES ('$mess', '$oborudov', '$surname')";

if($conn->query($sql)){
exit("<meta http-equiv='refresh' content='0; url= /form.php'>");
} else{
    
}
    

$conn->query($sql3);

$conn->close();

?>