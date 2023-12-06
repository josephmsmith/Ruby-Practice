#!/usr/bin/env ruby

=begin

show up to office  with 4 other people
queue takes in 1 at a time, 20 min a piece
go in alphabetical order, how long does it take you to walk out with license?

input: "your name", integer of available agents, "name name name name"
output: integer num of minutes to get license

=end

def time_to_leave
    print "what is your name? : "
    yourname = gets.chomp
    print "what is the number of available agents? : "
    num_agents = gets.chomp.to_i
    print "what are the other names of people? : "
    othernames = (gets.chomp.split(' ')<<yourname).sort
    puts othernames
    
end
time_to_leave

    