<?php 
 include 'connect.php';

$id=mysqli_real_escape_string($conn, $_REQUEST['id_z']); 


$sql4 = " DELETE FROM Zakaz WHERE id_zakaz='$id'";
if($conn->query($sql4)){
   exit("<meta http-equiv='refresh' content='0; url= /master.php'>"); 
} else{
    echo "error";
}
$conn->query($sql4);


$conn->close();

?>