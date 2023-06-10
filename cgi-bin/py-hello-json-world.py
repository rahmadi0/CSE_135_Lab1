#!/usr/bin/env python3

import json
import socket
import time

# Get the current date and time
current_time = time.ctime()

# Get the user's IP address
ip_address = socket.gethostbyname(socket.gethostname())

# Create a dictionary to hold the message data
message = {
    "title": "Hello, Python!",
    "heading": "Hello, Python!",
    "message": "This response was generated with the Python programming language",
    "time": current_time,
    "IP": ip_address
}

# Convert the message dictionary to a JSON string
json_string = json.dumps(message)

# Print the JSON string as the HTTP response
print("Cache-Control: no-cache")
print("Content-type: application/json\n")
print(json_string)
