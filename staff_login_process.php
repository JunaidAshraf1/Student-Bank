
<?php
ob_start();


if(isset($_POST['staff_login-btn'])){
	
if(isset($_POST['staff_id'])){
$staff_id = $_POST['staff_id'];
$password = $_POST['password'];
}
    
    $host="localhost";
    $user="root";
    $pass="";
    $db="bank_db";
    
    //Database Connection
    $conn = new mysqli($host, $user, $pass, $db);
    
    //Check Connection
    if($conn->connect_error){
        
        die("Please Check Database Connection".$connect_error);
    }
    
		$sql="SELECT * FROM bank_staff where Staff_id='$staff_id' and Password='$password' ";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		if($staff_id != $row['Staff_id'] && $password != $row['Password']){
			
		echo '<script>alert("Incorrect Id/Password.")</script>';
			
		}

			
		else{
			
		$_SESSION['staff_login'] = true;
		$_SESSION['staff_name'] = $row['Staff_name'];
        $_SESSION['staff_id'] = $row['Staff_id'];
		date_default_timezone_set('Asia/Kolkata'); 
		$_SESSION['staff_last_login'] = date("d/m/y h:i:s A");
		header('location:staff_profile.php');
		}
		
}



?>