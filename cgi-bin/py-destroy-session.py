#!/usr/bin/env python3

import http.cookies
import tempfile
import pickle
import os
import cgi
import cgitb

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

# Load session data from file
if session_id is not None:
    # Load session data from file
    session_path = os.path.join(session_directory, session_id)
    with open(session_path, "rb") as f:
        session = pickle.load(f)

    # Destroy the session
    os.remove(session_path)
    destroyed_message = "Session Destroyed"
else:
    destroyed_message = "No session to destroy"


# Print HTML output
print("Content-Type: text/html")
print()

print("""<!DOCTYPE html>
<html>
<head>
    <title>Python Session Destroyed</title>
</head>
<body>
    <h1>Session Destroyed</h1>
    <a href="/py-cgiform.html">Back to the Python CGI Form</a><br/>
    <a href="/cgi-bin/py-sessions-1.py">Back to Page 1</a><br/>
    <a href="/cgi-bin/py-sessions-2.py">Back to Page 2</a>
</body>
</html>
""")
