=begin
determine cost of 4 items, if order = else then order a coke
input = string delimited by spaces
output = total amount of order

=end

MENU = { Nacho:6.00, Pizza:6.00, Cheeseburger:10.00, Water:4.00, Coke:5.00} #define
TAX = 0.07
print "What would you like to order today? :"
order = gets.chomp.split(" ")       #create an array from order

def order_calculation(order)
    total_cost = 0
    order.each do |item|
        sym = item.capitalize.to_sym
        if MENU.has_key?(sym)
            price = MENU[sym]
            total_cost += price
        else
            price = MENU[:Coke]
            total_cost += price
        end
    end
    total_cost += total_cost * TAX
    puts "The total cost of your order is $#{total_cost}"
end

order_calculation(order)