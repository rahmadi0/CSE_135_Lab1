<?php

// Print HTTP headers
header("Cache-Control: no-cache");
header("Content-type: text/html");

// Print HTML file top
echo "<html><head><title>Environment Variables</title></head><body>";
echo "<h1 align=\"center\">Environment Variables</h1><hr>";

// Print Environment Variables section
echo "<h2>Environment Variables:</h2>";
echo "<ul>";
foreach ($_ENV as $key => $value) {
    echo "<li><b>$key:</b> $value</li>";
}
echo "</ul>";

// Print Server Variables section
echo "<h2>Server Variables:</h2>";
echo "<ul>";
foreach ($_SERVER as $key => $value) {
    echo "<li><b>$key:</b> $value</li>";
}
echo "</ul>";

// Print HTML file bottom
echo "</body></html>";
?>
