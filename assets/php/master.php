<?php 
 include 'connect.php';

$id=mysqli_real_escape_string($conn, $_REQUEST['id']); 
$master=mysqli_real_escape_string($conn, $_REQUEST['master']); 
$Usluga=mysqli_real_escape_string($conn, $_REQUEST['Usluga']);
$Summ=mysqli_real_escape_string($conn, $_REQUEST['Summ']);

$sql = "UPDATE Zakaz SET surnamemaster='$master', Usluga='$Usluga', Summ='$Summ' WHERE id_zakaz='$id'";
if($conn->query($sql)){
   exit("<meta http-equiv='refresh' content='0; url= /master.php'>"); 
} 



$conn->close();

?>