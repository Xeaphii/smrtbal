<?php
include 'deets.php';

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	 die("Connection failed: " . $conn->connect_error);
} 

if(isset($_GET['user_id']))
{
$user_id = $_GET['user_id'];
}else{
die("404");
}
if(isset($_GET['amount']))
{
$amount = $_GET['amount'];
}else{
die("404");
}
if(isset($_GET['currency']))
{
$currency = $_GET['currency'];
}else{
die("404");
}
if(isset($_GET['iban']))
{
$iban = $_GET['iban'];
}else{
die("404");
}
if(isset($_GET['swift_code']))
{
$swift_code = $_GET['swift_code'];
}else{
die("404");
}
if(isset($_GET['identifier_type']))
{
$identifier_type = $_GET['identifier_type'];
}else{
die("404");
}
if(isset($_GET['email']))
{
$email = $_GET['email'];
}else{
die("404");
}
$querry = "INSERT INTO `tb_smrtbal_transaction`( `user_id`, `amount`, `currency`, `iban`, `swift_code`, `identifier_type`,email)  VALUES ( {$user_id}, {$amount}, '{$currency}', '{$swift_code}', '{$iban}', 2,'$email');";
if ($result=mysqli_query($conn, $querry)) {
        $querry = "SELECT CEIL({$amount}/rate)  valueToPay FROM  tb_smrtcash_curr_values where currency = '{$currency}';";
	$result1 = mysqli_query($conn, $querry);
        if (mysqli_num_rows($result1) > 0) {
        while($row = mysqli_fetch_assoc($result1)) {
        echo $row["valueToPay"].",".mysqli_insert_id($conn);
        }
        }else{
        echo "null";
        }
} else {
	echo "Error: " . $querry . "<br>" . mysqli_error($conn);
}
$conn->close();
?>  