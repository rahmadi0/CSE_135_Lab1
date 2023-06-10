#!/usr/bin/env python3

import cgi
import sys
import os

print("Content-type: text/html")
print("Cache-Control: no-cache")
print()


# Get the message body from standard input
form = cgi.FieldStorage()
message_body = form.getvalue("message_body", "")

# Print the message body

print("<!DOCTYPE html>")
print("<html><head><title>General Request Echo</title></head>")
print("<body><h1 align=\"center\">General Request Echo</h1><hr>")
print("<p><b>HTTP Protocol:</b> {0}</p>".format(os.environ["SERVER_PROTOCOL"]))
print("<p><b>HTTP Method:</b> {0}</p>".format(os.environ["REQUEST_METHOD"]))
print("<p><b>Query String:</b> {0}</p>".format(os.environ["QUERY_STRING"]))
print("<p><b>Message Body:</b> {0}</p>".format(message_body))
print("</body></html>")
