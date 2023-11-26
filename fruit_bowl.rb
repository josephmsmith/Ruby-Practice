=begin 
Problem: Fruit Bowl
You have a bowl with even num of pieces of fruit. 1/2 are bananas, 1/2 are apples. 3 apples = 1 pie
Eval: total num of pies that you can make with apples that are in bowl given an input of fruit
Input: integer that reps total amount of fruit 
Output: int rep total number of apple pies
=end

def fruit_bowl
    print ("How much fruit do you have? : ")
    fruit = gets.chomp.to_i
    if fruit.odd?
        puts "Try again, this time an even number: "
    else
        apple_count = fruit/2
        pie_count = apple_count/3
        puts "The total number of pies you can make are #{pie_count.floor}"
    end
end

fruit_bowl


# # refined version
# def fruit_bowl
#     loop do  # Start an indefinite loop
#         print "How much fruit do you have? : "
#         fruit = gets.chomp.to_i

#         if fruit.odd?
#             puts "Try again, this time with an even number: "
#         else
#             apple_count = fruit / 2
#             pie_count = apple_count / 3
#             puts "The total number of pies you can make are #{pie_count.floor}"
#             break  # Exit the loop if an even number is entered
#         end
#     end
# end

# fruit_bowl
