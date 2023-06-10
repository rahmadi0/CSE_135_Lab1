<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Session Destroyed</title>
</head>
<body>
    <h1>Session Destroyed</h1>
    <a href="index.jsp">Back to the CGI Form</a><br>
    <a href="session1.jsp">Back to Page session 1</a><br>
    <a href="session2.jsp">Back to Page session 2</a>
</body>
</html>
