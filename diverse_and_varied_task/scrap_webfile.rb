#!/usr/bin/env ruby
require 'open-uri'

url = 'https://example.com/sample.txt'
destination = 'downloaded_file.txt'

open(destination, 'wb') do |file|
  file << URI.open(url).read
end

puts 'File downloaded successfully.'
