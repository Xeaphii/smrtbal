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
die("404");
}

$querry = "INSERT INTO tb_smrtbal_user (user_email) SELECT '{$email_}' FROM DUAL WHERE NOT EXISTS (SELECT * FROM tb_smrtbal_user WHERE user_email='{$email_}');";
if ($result=mysqli_query($conn, $querry)) {
$querry = "select * from tb_smrtcash_user_details where id = (select id from tb_smrtbal_user where user_email = '{$email_}' )";
//echo $querry;
        $result1 = mysqli_query($conn, $querry);
        if (mysqli_num_rows($result1) > 0) {
        $querry = "select id from tb_smrtbal_user where user_email = '{$email_}' ;";

        $result1 = mysqli_query($conn, $querry);
        $row = mysqli_fetch_assoc($result1);
        
        echo "1".":".$row["id"];
        }else{
        $querry = "select id from tb_smrtbal_user where user_email = '{$email_}' ;";

        $result1 = mysqli_query($conn, $querry);
        $row = mysqli_fetch_assoc($result1);
        
        echo "0".":".$row["id"];
        }
} else {
	echo "Error: " . $querry . "<br>" . mysqli_error($conn);
}
$conn->close();
?>  