<%@page import="java.util.Date"%>
<%@page import="java.net.InetAddress"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Hello JSP World</title>
</head>
<body>
	<h1>Hello World</h1>
	<p>This page was generated with the JSP programming language</p>
	<p>This program was run at: <%= new Date() %></p>
	<p>Your current IP address is: <%= InetAddress.getLocalHost().getHostAddress() %></p>
</body>
</html>
