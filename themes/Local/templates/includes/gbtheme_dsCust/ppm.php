<?php

/* connector for PowerPlay Mobile */


/* validation */

$errors = array();

if (!isset($_POST['phone'])) {
    $errors[] = '<div>You must include a number in the first phone number field.</div>';
}

if (!isset($_POST['phone2'])) {
    $errors[] = '<div>You must include a number in the second phone number field.</div>';
}

if (!isset($_POST['message'])) {
    $errors[] = '<div>You must choose at least one channel.</div>';
}

if (!isset($_POST['terms'])) {
    $errors[] = "<div>You must remember to check the 'I accept the terms and conditions' checkbox.</div>";
}

if ($_POST['phone'] !== $_POST['phone2']) {
    $errors[] = '<div>The phone numbers do not match. Please try again.</div>';
}

$phoneReg = preg_replace("/[^0-9]/", "", $_POST['phone']);
if(strlen($phoneReg) < 10) {
      $errors[] = '<div>The phone number is too short. It must be at least 10 digits. Please try again.</div>';
     
  }
  
if (count($errors) > 0) {
	foreach ($errors as $key=>$error) {
		echo $error;
	}
	exit;
}

$phone = $_POST['phone'];
$phone2 = $_POST['phone2'];

if (is_array($_POST['message'])) {
	$message = implode(",", $_POST['message']);
} else {
	$message = $_POST['message'];
}
  
$url = "http://ppmdev.com/register?phone=$phoneReg&keywords=$message";
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_USERPWD, "ctyp:ctyp17");
$result = curl_exec($ch);
curl_close($ch);

if (trim($result) === "OK") {
    echo "<div class='thanks'>Thank you! You should soon receive a text message on your phone at $phone.</div>";
    exit;
} else {
    echo $result;
}

?>