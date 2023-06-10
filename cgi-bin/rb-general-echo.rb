#!/usr/bin/env ruby

puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"

# Print HTML file top
puts <<END
<!DOCTYPE html>
<html>
<head>
  <title>General Request Echo</title>
</head>
<body>
  <h1 align="center">General Request Echo</h1>
  <hr>
END

# HTTP Protocol, HTTP Method, and the Query String are all environment variables
puts "<p><b>HTTP Protocol:</b> #{ENV['SERVER_PROTOCOL']}</p>"
puts "<p><b>HTTP Method:</b> #{ENV['REQUEST_METHOD']}</p>"
puts "<p><b>Query String:</b> #{ENV['QUERY_STRING']}</p>"

# NOTE: Although the Query String is an environment variable, the Message Body
# must be read in from the Standard Input with any language using CGI.
# Credit for this code to read in STDIN in Perl comes from:
# https://stackoverflow.com/questions/30447317/how-to-handle-post-request-to-perl-from-html
form_data = $stdin.read

puts "<p><b>Message Body:</b> #{form_data}</p>"

# Print the HTML file bottom
puts "</body></html>"
