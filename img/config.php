<?php 
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "banking_system";

$conn = mysqli_connect($servername,$username,$password,$db_name);

if(!$conn) {
    die("could not connect to the database due to the following error".mysqli_connect_error());
}
?>

