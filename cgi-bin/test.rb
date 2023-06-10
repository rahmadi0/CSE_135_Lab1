puts "Content-type: text/plain\n\n"
puts "Environment Variables:\n\n"
ENV.each do |key, value|
  puts "#{key} = #{value}"
end
