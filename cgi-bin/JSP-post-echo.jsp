<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>POST Request Echo</title>
</head>
<body>
    <h1 align="center">POST Request Echo</h1>
    <hr>
    <b>Message Body:</b><br>
    <ul>
    <% 
        String formData = request.getReader().readLine();
        if(formData != null && formData.length() > 0){
            String[] pairs = formData.split("&");
            for(String pair : pairs){
                String[] keyValue = pair.split("=");
                String key = java.net.URLDecoder.decode(keyValue[0], "UTF-8");
                String value = java.net.URLDecoder.decode(keyValue[1], "UTF-8");
                out.println("<li>" + key + " = " + value + "</li>");
            }
        }
    %>
    </ul>
</body>
</html>
