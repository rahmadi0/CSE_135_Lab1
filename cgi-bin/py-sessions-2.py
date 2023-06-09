#!/usr/bin/env python3

import os
import cgi
import cgitb
import http.cookies
import tempfile
import pickle

# Enable CGI error reporting
cgitb.enable()

# Create a new Python Session
from http import cookies
from urllib.parse import urlparse
import uuid

session_directory = "/tmp"

# Create CGI Object
cgi_obj = cgi.FieldStorage()

# Get the Session ID from the Cookie
cookie = cookies.SimpleCookie(os.environ.get("HTTP_COOKIE"))
session_id = cookie["CGISESSID"].value if "CGISESSID" in cookie else None

# If session_id is None, create a new session ID
if session_id is None:
    session_id = str(uuid.uuid4())

# Load session data from file
session_path = os.path.join(session_directory, session_id)

# Add a check to see if the session file exists before attempting to load it
if os.path.exists(session_path):
    with open(session_path, "rb") as f:
        session = pickle.load(f)
else:
    session = {}
    # Save the new session data to the file
    with open(session_path, "wb") as f:
        pickle.dump(session, f)

# Access Stored Data
name = session.get("username")

# Print HTML output
print("Content-Type: text/html")
print()

print("""<!DOCTYPE html>
<html>
<head>
    <title>Python Sessions</title>
</head>
<body>
    <h1>Python Sessions Page 2</h1>
""")

print("<p><b>Name:</b>", name, "</p>")
print("<br/><br/>")
print('<a href="/cgi-bin/py-sessions-1.py">Session Page 1</a><br/>')
print('<a href="/py-cgiform.html">Python CGI Form</a><br/>')
print('<form style="margin-top:30px" action="/cgi-bin/py-destroy-session.py" method="get">')
print('<button type="submit">Destroy Session</button>')
print('</form>')
print("</body>")
print("</html>")
