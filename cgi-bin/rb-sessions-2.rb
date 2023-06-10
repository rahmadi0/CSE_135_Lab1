#!/usr/bin/env ruby
require 'cgi'
require 'cgi/session'

# Create a new CGI Object
cgi = CGI.new

# Get the Session ID from the Cookie
sid = cgi.cookies.values_at('CGISESSID').first&.value.to_s
session = CGI::Session.new(cgi, 'session_key' => 'name', 'session_id' => sid, 'directory' => '/tmp')

#sid = cgi.cookies['CGISESSID']&.value
#session = CGI::Session.new(cgi, 'session_key' => 'CGISESSID', 'session_id' => sid, 'directory' => '/tmp')


# Access Stored Data
name = session['username']

# Set the content type in the response header
puts "Content-Type: text/html\n\n"

# Print HTML content
puts "<html>"
puts "<head>"
puts "<title>Ruby Sessions</title>"
puts "</head>"
puts "<body>"

puts "<h1>Ruby Sessions Page 2</h1>"

if !name.nil? && !name.empty?
  puts "<p><b>Name:</b> #{name}</p>"
else
  puts "<p><b>Name:</b> You do not have a name set</p>"
end
puts "<br/><br/>"
puts "<a href=\"/cgi-bin/rb-sessions-1.rb\">Session Page 1</a><br/>"
puts "<a href=\"/rb-cgiform.html\">Ruby CGI Form</a><br />"
puts "<form style=\"margin-top:30px\" action=\"/cgi-bin/rb-destroy-session.rb\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"

puts "</body>"
puts "</html>"
