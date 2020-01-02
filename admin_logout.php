<?php 



	session_start();
	
		include 'db_connect.php';
		// Update date & time
		
		$admin_id=$_SESSION['admin_id'];
		$last_login=$_SESSION['admin_last_login'];
		
		$sql="UPDATE bank_admin SET Last_login = '$last_login' WHERE bank_admin.Admin_Id ='$admin_id' ";
		$conn->query($sql);
	
		session_destroy();
		session_unset();
	
	header('location:admin_login.php');
	
	
?>