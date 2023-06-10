#!/usr/bin/env ruby
require 'cgi'
require 'cgi/session'

# Create a new CGI object
cgi = CGI.new

# Get the session ID from the cookie or parameter
#sid = cgi.cookies['CGISESSID']&.value
sid = cgi.cookies.values_at('CGISESSID').first&.value.to_s

session = CGI::Session.new(cgi, 'session_key' => 'CGISESSID', 'session_id' => sid, 'directory' => '/tmp')
session.delete if session && sid

# Set the content type in the response header
puts "Content-Type: text/html\n\n"

# Print HTML content
puts "<html>"
puts "<head>"
puts "<title>Ruby Session Destroyed</title>"
puts "</head>"
puts "<body>"
puts "<h1>Session Destroyed</h1>"
puts "<a href=\"/rb-cgiform.html\">Back to the Ruby CGI Form</a><br />"
puts "<a href=\"/cgi-bin/rb-sessions-1.rb\">Back to Page 1</a><br />"
puts "<a href=\"/cgi-bin/rb-sessions-2.rb\">Back to Page 2</a>"
puts "</body>"
puts "</html>"
