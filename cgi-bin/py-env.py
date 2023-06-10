#!/usr/bin/env python3

import os

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><head><title>Environment Variables</title></head><body><h1 align='center'>Environment Variables</h1><hr>")

for key, value in os.environ.items():
    print("<b>{key}:</b> {value}<br/>".format(key=key, value=value))

print("</body></html>")
