#!/usr/bin/env ruby
require 'json'

file_path = 'data.json'

# Reading JSON
data = JSON.parse(File.read(file_path))

# Modifying data
data['key'] = 'new_value'

# Writing back to JSON
File.write(file_path, JSON.pretty_generate(data))

puts 'JSON file updated successfully.'
