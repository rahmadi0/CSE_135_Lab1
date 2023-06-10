<?php
header("Cache-Control: no-cache");
header("Content-type: application/json");

// Get the current time and format it
$date = date("Y-m-d");

// Get the user's IP address
$ipAddress = $_SERVER['REMOTE_ADDR'];

// Create the response object
$response = array(
    "message" => "Hello World from PHP!",
    "date" => "Today's date is " . $date,
    "ipAddress" => $ipAddress
);

// Convert the response to JSON and print it
echo json_encode($response);
?>
