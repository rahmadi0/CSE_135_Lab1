<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    session.setAttribute("name", name);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Session Page 1</title>
</head>
<body>
    <h1>Session Page 1</h1>
    <p>Name: <%= session.getAttribute("name") %></p>
    <form action="JSP-sessions-2.jsp" method="post">
        <input type="submit" value="Next">
    </form>
    <form action="JSP-destroy-session.jsp" method="post">
        <input type="submit" value="Destroy Session">
    </form>
</body>
</html>
