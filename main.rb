#!/usr/bin/env ruby

#require 'rmagick'
#include Magick

files = Dir.glob('/app/input/*')
puts files

files.each do |file|
  #binding.pry
  puts "Shrinking: #{file}"
  filename = file.split('/').last
  `convert #{file} -strip -quality #{ENV['COMPRESSION_LEVEL']} /app/shrunk/#{filename}`
  #raw = ImageList.new(file)
  #shrink = raw.strip!.sample(70)
  #File.open("#{file}_shrunk", 'w') { |file| file.write(shrink) }
end
