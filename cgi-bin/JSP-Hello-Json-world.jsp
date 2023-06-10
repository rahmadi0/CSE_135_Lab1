<%@page contentType="application/json"%>
<%@page import="java.util.*, java.net.*"%>
<%
    Date date = new Date();
    InetAddress ip = InetAddress.getLocalHost();

    Map<String, Object> message = new HashMap<String, Object>();
    message.put("title", "Hello, JSP!");
    message.put("heading", "Hello, JSP!");
    message.put("message", "This response was generated with the JSP programming language");
    message.put("time", date.toString());
    message.put("IP", ip.getHostAddress());

    String json = new Gson().toJson(message);

    out.print(json);
%>
