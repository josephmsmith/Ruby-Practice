#!/usr/local/env ruby

=begin

you're looking for specific item in box, once you find it, you exit
determine amount of time to look if each box = 5 min

input:
a string of items drilled in order, deliminated by commas
a string for item you are looking for

output: time it will take to find the item

=end

print "What items are you looking through: "
list = gets.chomp.split(", ")
print "What item are you looking for? "
search_item = gets.chomp


 def time_to_search(search_item, list)
    num_of_items_searched = 0
    list.each do |item|
        if item != search_item
            num_of_items_searched +=1
        else
            puts "Item found"
        end
    end
    puts "It took you #{num_of_items_searched*5} minutes to find #{search_item}"
 end


 time_to_search(search_item,list)
