<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Environment Variables</title>
</head>
<body>
	<h1 align="center">Environment Variables</h1>
	<hr>
	<p>Environment Variables:</p>
	<ul>
	<%
	// Loop over the environment variables and print each variable and its value
	java.util.Map<String, String> envMap = System.getenv();
	for (String envVar : envMap.keySet()) {
		String envValue = envMap.get(envVar);
		out.println("<li><b>" + envVar + ":</b> " + envValue + "</li>");
	}
	%>
	</ul>
	<p>Server Variables:</p>
	<ul>
	<%
	// Loop over the server variables and print each variable and its value
	java.util.Enumeration<String> serverVars = request.getHeaderNames();
	while (serverVars.hasMoreElements()) {
		String serverVar = serverVars.nextElement();
		String serverValue = request.getHeader(serverVar);
		out.println("<li><b>" + serverVar + ":</b> " + serverValue + "</li>");
	}
	%>
	</ul>
</body>
</html>
