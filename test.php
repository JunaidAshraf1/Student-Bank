<?php

//-------------------To the receiver----------------------------------------------------
			$acc_no = "Junaid";
			require('textlocal.class.php');
			$apikey = 'Mzie479SxfY-Z7slYf9AI3zVXCAu0G5skUBQVYOfRU';
			$textlocal = new Textlocal(false,false,$apikey);
			$numbers = array(7278523122);
			$sender = 'SBOIBK';
			//$message = 'Welcome to Student Bank of India. Your account number is  '.$acc_no.' Consider using our 24x7 Internet banking services to get full advantage. Happy banking.' ;
			
			$message = "Welcome to Student Bank of India. Your account number is ".$acc_no."Consider using our 24x7 Internet banking services to get full advantage. Happy banking.'";
		
			try {
				$result = $textlocal->sendSms($numbers, $message, $sender);
				print_r($result);
			} catch (Exception $e) {
				die('Error: ' . $e->getMessage());
			}

				//-------------------------------------------------------------------------------------------	
		//--------------------------------------------------------------
		
		
		?>