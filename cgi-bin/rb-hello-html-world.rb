#!/usr/bin/env ruby
require 'time'

# Print HTML header
puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"
puts "<html><head><title>Hello CGI World</title></head>\
<body><h1 align=center>Hello HTML World</h1>\
<hr/>\n"

puts "Hello World<br/>"
puts "This program was generated at: #{Time.now}<br/>"
puts "Your current IP address is: #{ENV['REMOTE_ADDR']}<br/>"

# Print HTML footer
puts "</body></html>"
