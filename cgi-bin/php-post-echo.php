<?php
header("Cache-Control: no-cache");
header("Content-type: text/html");

// print HTML file top
echo <<<END
<!DOCTYPE html>
<html>
<head>
	<title>POST Request Echo</title>
</head>
<body>
	<h1 align="center">POST Request Echo</h1>
	<hr>
END;

// get the message body
$form_data = file_get_contents('php://input');

// parse the message body
parse_str($form_data, $in);

// print the message body
echo "<b>Message Body:</b><br />\n";
echo "<ul>\n";
foreach ($in as $key => $value) {
    echo "<li>$key = $value</li>\n";
}
echo "</ul>\n";

// print HTML file bottom
echo "</body></html>";
?>
