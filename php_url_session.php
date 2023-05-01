<?php
// Start the session
session_start();

// Set session variables
$_SESSION["name"] = $_POST["name"];

// Redirect to display session data with URL parameter
header("Location: php_session_display.php?method=php_url");
exit();
?>
