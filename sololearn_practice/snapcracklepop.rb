#!/usr/local/bin/env ruby

=begin

6 bowls of rk
if bowl %3 then pop
if bowl =! %3 and odd then snap
if bowl != %3 and even then crackle

input: 6 integers on different lines
output: 6 sounds on one line deliminated by spaces

=end

# ORIGINAL VERSION
# def snapcracklepop
#     sounds_array = []
#     6.times do |number|
#         print "How many rice krispies are in the bowl? : "
#         number = gets.chomp.to_i
#         if number %3 == 0
#             sound = "pop"
#         elsif number.even?
#             sound = "snap"
#         else sound = "crackle"
#         end
#         sounds_array << sound
#     end
#     puts sounds_array.join(" ")
# end

# new version

def determine_sound(number)
    case
    when number % 3 == 0
      "pop"
    when number.even?
      "snap"
    else
      "crackle"
    end
  end
  
def snapcracklepop(times = 6)
    sounds_array = []
  
    times.times do |index|
      print "How many rice krispies are in bowl number #{index + 1}? : "
      input = gets.chomp
  
      # Check if input is a number
      if input =~ /^\d+$/
        number = input.to_i
        sounds_array << determine_sound(number)
      else
        puts "Please enter a valid number."
        redo
      end
    end

    puts sounds_array.join(" ")
end
  
snapcracklepop
  
