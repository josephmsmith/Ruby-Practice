#!/usr/bin/env ruby

# # String Interpolation

# color = 'green'
# turtle = 'Leonardo'
# weapon = 'swords'
# star = 'Joseph Gordon Levitt'
# movie = 'inception'

# puts "My favorite color is #{color}. \nMy favorite ninja turtle is #{turtle}. His weapon is #{weapon}. 
# #{star} is a great movie star. My favorite movie of theirs is #{movie}."

# # Fizzbuzz refresher

# # number divisible by 5 print "Fizz"
# # If the number is divisible by three print out "Buzz"
# # If the number is divisible by both five and three print out "Fizz Buzz"
# # If the number is not divisible by either five or three print out "(num) is not fizzable"

# 1.upto(20) do |i|
#     if i % 5 == 0 && i % 3 == 0 
#         puts "FizzBuzz"
#     elsif i % 5 == 0 
#         puts "Fizz"
#     elsif i % 3 == 0 
#         puts "Buzz"
#     else
#         puts "#{i} is not fizzable"
#     end
# end

# Nested Arrays

arr = [["Bobby", "Jaden", "Denis"], ["Red", "Blue", "Green"], ["Limp Bizkit", "3 Doors Down", "Papa Roach"]]


# Find the length of the shortest array
min_length = arr.map(&:length).min

# Iterate through each index of the nested arrays up to the shortest array's length
min_length.times do |i|
    name = arr[0][i]
    color = arr[1][i]
    band = arr[2][i]

    # Print the sentence
    puts "#{name}'s favorite color is #{color}, and he loves #{band}"
end



