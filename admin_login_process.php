
<?php
ob_start();


if(isset($_POST['admin_login-btn'])){
	
if(isset($_POST['admin_id'])){
$admin_id = $_POST['admin_id'];
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
    
		$sql="SELECT * FROM bank_admin where Admin_id='$admin_id' and Password='$password' ";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		if($admin_id != $row['Admin_id'] && $password != $row['Password']){
			
		echo '<script>alert("Incorrect Id/Password.")</script>';
			
		}

			
		else{
			
		$_SESSION['admin_login'] = true;
		$_SESSION['admin_name'] = $row['Admin_name'];
        $_SESSION['admin_id'] = $row['Admin_Id'];
		date_default_timezone_set('Asia/Kolkata'); 
		$_SESSION['admin_last_login'] = date("d/m/y h:i:s A");
		header('location:admin_profile.php');
		}
		
}



?>