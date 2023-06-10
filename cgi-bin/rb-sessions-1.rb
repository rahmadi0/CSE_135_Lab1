#!/usr/bin/env ruby

require 'cgi'
require 'cgi/session'


# Create a CGI object
cgi = CGI.new

# Create a new Ruby session
session = CGI::Session.new(cgi)

# Create a new Cookie from the Session ID
cookie = CGI::Cookie.new('name' => 'CGISESSID', 'value' => session.session_id)

# Print the HTTP header
puts cgi.header('type' => 'text/html', 'cookie' => [cookie])

# Store data in the session
name = cgi.params['username'].first
session['username'] = name

# Output HTML
puts "<html>"
puts "<head>"
puts "<title>Ruby Sessions</title>"
puts "</head>"
puts "<body>"

puts "<h1>Ruby Sessions Page 1</h1>"

if !name.nil? && !name.empty?
  puts "<p><b>Name:</b> #{name}</p>"
else
  puts "<p><b>Name:</b> You do not have a name set</p>"
end


puts "<br/><br/>"
puts "<a href=\"/cgi-bin/rb-sessions-2.rb\">Session Page 2</a><br/>"
puts "<a href=\"/rb-cgiform.html\">Ruby CGI Form</a><br />"
puts "<form style=\"margin-top:30px\" action=\"/cgi-bin/rb-destroy-session.rb\" method=\"get\">"
puts "<button type=\"submit\">Destroy Session</button>"
puts "</form>"

puts "</body>"
puts "</html>"
