<?php
// Print HTTP header
header("Cache-Control: no-cache");
header("Content-type: text/html");

// Print HTML file top
echo <<<END
<!DOCTYPE html>
<html>
<head>
    <title>General Request Echo</title>
</head>
<body>
    <h1 align="center">General Request Echo</h1>
    <hr>
END;

// Get environment variables
echo "<p><b>Request Method:</b> {$_SERVER['REQUEST_METHOD']}</p>";
echo "<p><b>Protocol:</b> {$_SERVER['SERVER_PROTOCOL']}</p>";
echo "<p><b>Query:</b> {$_SERVER['QUERY_STRING']}</p>";

// Read message body from standard input
$message_body = file_get_contents('php://input');
echo "<p><b>Message Body:</b> $message_body</p>";

// Print HTML file bottom
echo "</body></html>\n";
?>
