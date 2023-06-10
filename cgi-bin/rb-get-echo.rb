#!/usr/bin/env ruby

puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"

# Print HTML file top
html_top = <<HTML
<!DOCTYPE html>
<html>
<head>
<title>GET Request Echo</title>
</head>
<body>
<h1 align="center">Get Request Echo</h1>
<hr>
HTML


puts html_top

# The Query String is simply an environment variable
query_string = ENV['QUERY_STRING']
puts "<b>Query String:</b> #{query_string}<br />\n"


# Parse the Query String
query_params = {}
unless query_string.nil? || query_string.empty?
  pairs = query_string.split('&')
  pairs.each do |pair|
    name, value = pair.split('=')
    value = URI.decode_www_form_component(value)
    query_params[name] = value
  end
end



# Print out the Query String
loop_count = 0
query_params.each do |key, value|
  loop_count += 1
  if loop_count.odd?
    puts "#{key} = #{value}<br/>\n"
  end
end

# Print the HTML file bottom
html_bottom = <<HTML
</body>
</html>
HTML

puts html_bottom
