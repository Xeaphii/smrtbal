<?php
include 'deets.php';

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
	 die("Connection failed: " . $conn->connect_error);
} 


if(isset($_GET['email']))
{
$email_ = $_GET['email'];
}else{
die(":::");
}

$querry = "SELECT  balance FROM  tb_smrtbal_user WHERE  user_email =  '{$email_}';";
if ($result=mysqli_query($conn, $querry)) {
        if(mysqli_num_rows($result)==0){
		die(":::");
	}
	 while($row = $result->fetch_assoc()) {
				die($row["balance"]); 
    }
} else {
	echo "Error: " . $querry . "<br>" . mysqli_error($conn);
}
$conn->close();
?>  