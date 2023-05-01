<?php
session_start();
if(isset($_SESSION['name'])){
    $name = $_SESSION['name'];
}else{
    header("location: php-cgi-form.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>PHP Sessions Page 2</title>
</head>

<body>
    <h1>PHP Sessions Page 2</h1>

    <p>Name: <?php echo $name; ?></p>

    <a href="php-cgi-form.html">Back to Form</a>
    <a href="php-url-sessions-1.php">Back to Page 1</a>

    <form method="post" action="php-destroy-url-session.php">
        <input type="submit" value="Destroy Session">
    </form>
</body>

</html>
