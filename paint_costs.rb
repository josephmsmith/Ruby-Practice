#!/usr/local/bin/env ruby

=begin

canvas + brush = 40
each color = 5.00
tax = 10%
determine total cost rounded up to next dollar

input = integer(how many colors)
output = cost of purchase rounded up

=end

print "how many colors do you need? : "
color_ct = gets.chomp.to_i
TAX = 1.10

# def order_cost(color_ct)
#     color_cost = color_ct * 5
#     canvas_brush = 40
#     total = (canvas_brush+color_cost)*TAX
#     puts "You will need #{total.ceil} dollars to complete your purchase"
# end

# more efficient version
def order_cost(color_ct)
    total = (40 + color_ct*5) * TAX
    puts "You will need $#{total.ceil} dollars to complete your purchase"
end

order_cost(color_ct)
