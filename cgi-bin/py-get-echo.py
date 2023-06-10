#!/usr/bin/env python3

import cgi

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<!DOCTYPE html>")
print("<html>")
print("<head>")
print("<title>GET Request Echo</title>")
print("</head>")
print("<body>")
print("<h1 align=\"center\">Get Request Echo</h1>")
print("<hr>")

# Parse the query string
query_string = cgi.FieldStorage()
query_string_dict = {key: query_string.getvalue(key) for key in query_string.keys()}

# Print the raw query string
print("<b>Raw Query String:</b> " + cgi.escape(query_string.environ['QUERY_STRING']) + "<br>\n")

# Print the formatted query string
if query_string_dict:
    print("<b>Formatted Query String:</b><br>")
    for key, value in query_string_dict.items():
        print(cgi.escape(key) + " = " + cgi.escape(value) + "<br>\n")

print("</body>")
print("</html>")
