<?php 
session_start();
if($_SESSION['admin_login'] != true)
{
	
	 header('location:admin_login.php');

}	

?>

<html>
    <head>
    
    <link rel="stylesheet" type="text/css" href="css/staff_profile_header.css" />
	
	</head>
    
<body>
    		
			
	<?php	
		include 'db_connect.php';
        
        $admin_id = $_SESSION['admin_id'];
		$sql="SELECT * FROM bank_admin WHERE Admin_id= '$admin_id' ";
        $result=$conn->query($sql);
        if($result->num_rows > 0)
		$row = $result->fetch_assoc();

	?>
       <div class="head">
            
            <div class="customer_details">
			
			
			<img src="" onerror="this.src='img/customers/No_image.jpg'"  height="115px" width="105px"/>
			</div>
             <div class="welcome">

             <label>Welcome <?php echo $_SESSION['admin_name']; ?></label><h6 class="lstlogin">Last login : <?php echo $row['Last_login']  ; ?> </h6>
                  </div>
            <a class="admin_home" href="admin_profile.php"><input type="button" name="home" value="Home"></a>
            <a class="admin_logout" href="admin_logout.php"><input type="button" name="logout_btn" value="Logout"></a>
        
        </div>
        <br>
			

    </body>
</html>