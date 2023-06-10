#!/usr/bin/env python3

import cgi

# Print HTTP headers
print("Cache-Control: no-cache")
print("Content-type: text/html\n")

# Print HTML file top
print("<!DOCTYPE html>")
print("<html><head><title>POST Request Echo</title></head><body>")
print("<h1 align=\"center\">POST Request Echo</h1>")
print("<hr>")

# Get message body from standard input
form = cgi.FieldStorage()

print("<b>Message Body:</b><br />")
print("<ul>")

#Print out the message body
for key in form.keys():
    print("<li>{0} = {1}</li>".format(key, form.getvalue(key)))

print("</ul>")
# Print the HTML file bottom
print("</body></html>")
