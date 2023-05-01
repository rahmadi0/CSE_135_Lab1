<?php
session_start();

if (!isset($_SESSION['name'])) {
	header("Location: php-cgi-form.html");
}

if (isset($_POST['destroy'])) {
	session_destroy();
	header("Location: php-destroy-cookie-session.php");
}

$name = $_SESSION['name'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>PHP Sessions Page 2</title>
</head>
<body>
	<h1>PHP Sessions Page 2</h1>
	<p>Name: <?php echo $name ?></p>
	<a href="php-cgi-form.html">Back to Form</a>
	<a href="php-cookie-sessions-1.php">Previous Page</a>
	<form method="post">
    <input type="submit" name="destroy" value="Destroy Session">
	</form>
</body>
</html>
