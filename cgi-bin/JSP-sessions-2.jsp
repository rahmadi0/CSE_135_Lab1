<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Session Page 2</title>
</head>
<body>
    <h1>Session Page 2</h1>
    <p>Name: <%= session.getAttribute("name") %></p>
    <form action="JSP-sessions-1.jsp" method="post">
        <input type="submit" value="Previous">
    </form>
    <form action="JSP-destroy-session.jsp" method="post">
        <input type="submit" value="Destroy Session">
    </form>
</body>
</html>
