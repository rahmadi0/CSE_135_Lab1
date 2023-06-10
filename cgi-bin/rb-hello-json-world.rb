#!/usr/bin/env ruby
require 'json'

puts "Cache-Control: no-cache"
puts "Content-type: application/json\n\n"

date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
address = ENV['REMOTE_ADDR']

message = {
  'title' => 'Hello, Ruby!',
  'heading' => 'Hello, Ruby!',
  'message' => 'This page was generated with the Ruby programming language',
  'time' => date,
  'IP' => address
}

json = message.to_json
puts json
