<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "bank_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    
	
	header('location:server_down.php');
} 

?>