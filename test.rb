#!/usr/bin/env ruby

require 'optparse'

options = {}

OptionParser.new do |op|
  op.on("-e", "--email", "Your email address") do |value|
 	options[:name] = value
  end
end.parse!

# puts 'Your email address is: ' + options[:name]
