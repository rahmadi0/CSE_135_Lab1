<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>GET Request Echo</title>
</head>
<body>
    <h1 align="center">Get Request Echo</h1>
    <hr>
    <%
        String rawQueryString = request.getQueryString();
        String formattedQueryString = "";
        if (rawQueryString != null && !rawQueryString.isEmpty()) {
            // Format the query string
            String[] pairs = rawQueryString.split("&");
            for (String pair : pairs) {
                String[] parts = pair.split("=");
                String name = parts[0];
                String value = "";
                if (parts.length > 1) {
                    value = parts[1];
                }
                formattedQueryString += name + " = " + value + "<br/>\n";
            }
        } else {
            formattedQueryString = "No query string found.";
        }
    %>
    <b>Raw Query String:</b> <%= rawQueryString %><br/>
    <b>Formatted Query String:</b><br/>
    <%= formattedQueryString %>
</body>
</html>
