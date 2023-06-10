<?php
session_start();

if (isset($_POST['name'])) {
    $_SESSION['name'] = $_POST['name'];
    $method = $_POST['method'];
    if ($method == "php_cookies") {
        header("Location: php-cookie-sessions-1.php");
    } else if ($method == "php_url") {
        $session_id = session_id();
        header("Location: php-url-sessions-1.php" . session_name() . "=" . $session_id);
    }
} else {
    header("Location: ../php-cgi-form.html");
}
?>

