#!usr/bin/env ruby

=begin
Build a command line application that will loop through the tmnt hash below and create two new arrays. 
One called "turtleName" and one called "turtleColor". Print these arrays
Lets take it a step further. Print out a sentence such as "Raphael wears a Red bandana"
=end

# define hash
# tmnt = {"Raphael" => "Red", 
#     "Donnatello" => "Purple",
#     "Leonardo" => "Blue",
#     "Michealangelo" => "Orange"
# }
tmnt = {Raphael:"Red"}
tmnt [:Donatello] = :"Purple"


tmntSize = tmnt.size - 1
turtleName = tmnt.keys
turtleColor = tmnt.values

0.upto(tmntSize).each{|i| puts "#{turtleName[i]} wears a #{turtleColor[i]} bandana"}
