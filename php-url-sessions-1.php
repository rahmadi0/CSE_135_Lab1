<?php
session_start();

if (!isset($_GET[session_name()]) || $_GET[session_name()] != session_id()) {
    header("Location: php-cgi-form.html");
}

if (isset($_POST['destroy'])) {
    session_destroy();
    header("Location: php-destroy-url-session.php");
}

$name = $_SESSION['name'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>PHP Sessions Page 1</title>
</head>
<body>
    <h1>PHP Sessions Page 1</h1>
    <p>Name: <?php echo $name ?></p>
    <a href="php-cgi-form.html">Back to Form</a>
    <a href="php-url-sessions-2.php?<?php echo session_name() . "=" . session_id() ?>">Next Page</a>
    <form method="post">
        <input type="submit" name="destroy" value="Destroy Session">
    </form>
</body>
</html>
