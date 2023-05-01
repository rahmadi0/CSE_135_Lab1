<?php
session_start();

// Set session variables
$_SESSION['name'] = $_POST['name'];
$_SESSION['method'] = $_POST['method'];

if ($_POST['method'] == 'php_cookies') {
    header("Location: php-cookie-sessions-1.php");
} elseif ($_POST['method'] == 'php_url') {
    header("Location: php-url-sessions-1.php?" . session_name() . "=" . session_id());
} else {
    echo "Invalid method";
}
?>
