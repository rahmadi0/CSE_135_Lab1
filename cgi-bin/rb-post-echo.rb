#!/usr/bin/env ruby

puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"

# Print HTML file top
html_top = <<HTML
<!DOCTYPE html>
<html>
<head>
<title>POST Request Echo</title>
</head>
<body>
<h1 align="center">POST Request Echo</h1>
<hr>
HTML

puts html_top

# Read the message body from standard input
form_data = $stdin.read

# Parse the message body
query_params = {}
unless form_data.nil? || form_data.empty?
  pairs = form_data.split('&')
  pairs.each do |pair|
    name, value = pair.split('=')
    value = URI.decode_www_form_component(value)
    query_params[name] = value
  end
end

puts "<b>Message Body:</b><br />"
puts "<ul>"

# Print out the query string
loop_count = 0
query_params.each do |key, value|
  loop_count += 1
  if loop_count.odd?
    puts "<li>#{key} = #{value}</li>"
  end
end

puts "</ul>"
# Print the HTML file bottom
html_bottom = <<HTML
</body>
</html>
HTML

puts html_bottom
