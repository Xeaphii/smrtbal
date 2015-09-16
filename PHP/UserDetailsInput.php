<?php
include 'deets.php';

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	 die("Connection failed: " . $conn->connect_error);
} 


if(isset($_GET['id']))
{
$id = $_GET['id'];
}else{
die("404");
}
if(isset($_GET['address']))
{
$address = $_GET['address'];
}else{
die("404");
}
if(isset($_GET['name']))
{
$name = $_GET['name'];
}else{
die("404");
}
if(isset($_GET['phone_number']))
{
$phone_number = $_GET['phone_number'];
}else{
die("404");
}
if(isset($_GET['id_number']))
{
$id_number = $_GET['id_number'];
}else{
die("404");
}


$querry = "INSERT INTO `tb_smrtbal_user_details`(`id`, `address`, `name`, `phone_number`, `id_number`) VALUES ({$id}, '{$address}', '{$name}', '{$phone_number}', '{$id_number}');";
if ($result=mysqli_query($conn, $querry)) {
        echo "100";
} else {
	echo "Error: " . $querry . "<br>" . mysqli_error($conn);
}
$conn->close();
?>  