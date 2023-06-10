#!/usr/bin/env python3

import cgi
import cgitb
import datetime
import socket

# enable debugging
cgitb.enable()

# get the current date and time
now = datetime.datetime.now()

# get the user's IP address
ip_address = socket.gethostbyname(socket.gethostname())

# start the HTML output
print("Content-Type: text/html\n")
print("<html>")
print("<head>")
print("<title>Hello HTML World!</title>")
print("</head>")
print("<body>")
print("<h1>Hello HTML World!</h1>")
print("<p>Hello World</p>")
print("<p>This page was generated with the Python programming language</p>")
print("<p>This program was run at: {0}</p>".format(now))
print("<p>Your current IP address is: {0}</p>".format(ip_address))
print("</body>")
print("</html>")
