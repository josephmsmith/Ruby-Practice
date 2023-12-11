#!/usr/bin/env ruby

# Allows user to open file via the command line
filename = ARGV.first
begin
    puts "Attempting to open file: #{filename}"
    text = open(filename)
    puts "Here is your file: #{filename}"
    puts text.read
    text.close
rescue => e
    puts "Error opening file: #{e.message}"
end

# # Takes in a user input file then allows user to open it 
# print "Please insert the file path to the file you'd like to open: "
# file_again = gets.chomp

# begin
#     text_again = open(file_again)
#     puts "Here is your file, #{file_again}"
#     print text_again.read
#     text_again.close
# rescue => e
#     puts "Error opening file: #{e.message}"
# end

