<?php
header("Cache-Control: no-cache");
header("content-type: text/html; charset=utf-8");

echo "<html><head><title>GET Request Echo</title></head><body>";
echo "<h1 align='center'>Get Request Echo</h1><hr/>";

$queryString = $_SERVER['QUERY_STRING'];
echo "<table><b>Query String:</b>$queryString";
parse_str($queryString,$params);
foreach ($params as $key => $value){
    echo "<tr><td>$key:</td><td>$value</td></tr>";
}
echo "</table><br/>";

echo "</body></html>";
?>

