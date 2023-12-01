#!/usr/local/bin/env ruby

=begin

playing skeeball
receive 1 ticket for every 12 points scored
purchase squirt gun with tickets
given score and price of squirt gun, can you buy

input: integer that represents points scored playing
input 2: integer value represents cost of squirt gun in tickets

output: "buy it" if you have enough or 'try again' if you don't

=end

print "How many points did you score? : "
usr_points = gets.chomp.to_i
print "What is the cost of the squirt gun? : "
sq_gun = gets.chomp.to_i

# def enough_points(usr_points, sq_gun)
#     tickets = usr_points.div(12)        # divide usr_points by 12 and .floor automatically
#     if tickets >= sq_gun
#         puts "buy it"
#     else
#         puts "try again"
#     end
# end

# option 2 - simplify
def enough_points(usr_points, sq_gun)
    tickets = usr_points.div(12)        # divide usr_points by 12 and .floor automatically
    puts "Try again you only have #{tickets} tickets" if tickets < sq_gun       # guard clause makes code more readable and reduces nesting
    puts "Buy it, you have #{tickets} tickets which is enough!"
end

enough_points(usr_points, sq_gun)
