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


$output = "";
$querry = "SELECT * FROM `tb_smrtcash_transaction` WHERE `user_id` = {$id}";
if ($result=mysqli_query($conn, $querry)) {
     while($row = mysqli_fetch_assoc($result)) {
        $output  = $output .  $row["id"]. ":" . $row["amount"]. ":" . $row["currency"].":".$row["status"].":";
		if($row["identifier_type"] == 0){
			$output  = $output . $row["iban"];
		}else if($row["identifier_type"] == 1){
			$output  = $output . $row["swift_code"];
		}else{
			$output  = $output . $row["swift_code"].":".$row["iban"];
		}
		$output  = $output . ";";
    }
	echo trim($output,";") ;
} else {
	echo "Error: " . $querry . "<br>" . mysqli_error($conn);
}
$conn->close();
?>  