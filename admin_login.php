<?php
session_start();
if(isset($_SESSION['admin_login'])){
	
	header('location:admin_profile.php') ;
	
}


 ?>
<html>
<head>
    <title>Admin Login</title>
  
    <link rel="stylesheet" type="text/css" href="css/staff_login.css" />

    </head>
    <body>
        
	 <?php include'header.php' ?>
        <div class="admin_login_container">
            
            <form method="post"> 
                
      <br>
        <div class="formspace">
		<p class="formspace2">
    
        <div class="form">
            
        <label class="login">Admin</label>
        <div class="input_field">  
        <label class="userdetail">Admin ID</label><br>
        <input class="customer_id" type="text" name="admin_id" required /><br>
        <label class="userdetail">Password</label><br>
        <input class="password" type="password" name="password" required/><br>
        <input class="login-btn" type="submit" name="admin_login-btn" value="LOGIN"/><br>
        <a class="help"><label class="label_help" >FORGET PASSWORD ?</label></a>
            <img class="userloginimg" src="img/home-logo-hi.png" height="90px" width="90px">
        </div>
                </div>
							</div>  </div>
            </form>
        <br>
        
        <?php include 'footer.php' ?>
    </body>
</html> 

<?php include 'admin_login_process.php '?>

