<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<head>
<title>General Request Echo</title>
</head>
<body>
<h1 align="center">General Request Echo</h1>
<hr>
<%
    // Get the HTTP protocol, method, and query string
    String protocol = request.getProtocol();
    String method = request.getMethod();
    String queryString = request.getQueryString();

    // Get the message body
    String messageBody = "";
    BufferedReader reader = request.getReader();
    String line = null;
    while ((line = reader.readLine()) != null) {
        messageBody += line;
    }

    // Output the results
    out.println("<p><b>HTTP Protocol:</b> " + protocol + "</p>");
    out.println("<p><b>HTTP Method:</b> " + method + "</p>");
    out.println("<p><b>Query String:</b> " + queryString + "</p>");
    out.println("<p><b>Message Body:</b> " + messageBody + "</p>");
%>
</body>
</html>
