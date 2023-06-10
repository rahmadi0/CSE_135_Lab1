<?php
session_start();
session_unset();
session_destroy();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Session Destroyed</title>
</head>

<body>
    <h1>Session Destroyed</h1>

    <a href="../php-cgi-form.html">Back to Form</a>
    <a href="php-cookie-sessions-1.php">Back to Page 1</a>
    <a href="php-cookies-sessions-2.php">Back to Page 2</a>
</body>

</html>
