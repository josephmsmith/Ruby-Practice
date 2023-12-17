#!/usr/bin/env ruby

=begin
input: string
output: 'Deja Vue' if any letters are repeated, or 'Unique' if no repeats
=end


# orginal version
# def repeat_checker()
#     print "Did you have any repeats? Or is your sentence unique? : "
#     input = gets.chomp.split('')
#     unique = true

#     input.each_with_index do |char,i|
#         if i>0 && input[i] == input[i-1]
#             puts "Deja Vue"
#             unique = false
#             break
#         end
#     end
#     puts "Unique" if unique
# end

# more clearly readable

def repeat_checker
    print "Did you have any repeats? Or is your sentence unique? : "
    input = gets.chomp.chars        #.chars is used convert input into array of characters 
  
    if input.each_cons(2).any? { |a, b| a == b }    #each_cons(2) iterates through each char as pairs if pairs equal eachother then true and will print out 
        puts "Deja Vue"
    else
      puts "Unique"
    end
end
  
#repeat_checker

# see if there are any alternating characters ('aba')
def custom_string_analyzer
    print "Enter a string to analyze: "
    input = gets.chomp.chars
    alt_count = 0
    
    #check for alternates
    truefalse = input.chars(3).each.any? {|a,b,c| a==c}

    if truefalse
        input.chars(3).each{|a,b,c|a==c}
        alt_count+=1
    else
        next
    end
    print "There are count #{alt_count} alternates"
end

    
custom_string_analyzer

def custom_string_analyzer
    print "Enter a string to analyze: "
    input = gets.chomp.chars
    alt_count = 0
    
    # Check for alternates
    input.each_cons(3) do |a, b, c|
      alt_count += 1 if a == c && a != b
    end
    
    puts "There are #{alt_count} instances where characters alternate."
  end