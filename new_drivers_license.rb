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
    allnames = (gets.chomp.split(' ')<<yourname).sort       # take in all user names, combine with yourname, and transform
    
    index_of_yourname = allnames.index(yourname)            # index the spot of yourname
    total_time = ((index_of_yourname/num_agents).floor+1) * 20  # calculate the time of the people in front then add 20 for yourself
    puts total_time
    
end
# time_to_leave

# alternate / better version of code more in line with ruby standards
def time_to_leave(your_name, num_agents, other_names)
    all_names = (other_names.split(' ') << your_name).sort
    position_in_queue = all_names.index(your_name)
    total_time = ((position_in_queue / num_agents).floor + 1) * 20
  
    total_time
end
  
# Get user inputs
print "What is your name? : "
your_name = gets.chomp
print "What is the number of available agents? : "
num_agents = gets.chomp.to_i
print "What are the other names of people? : "
other_names = gets.chomp

# Calculate and display the time
puts time_to_leave(your_name, num_agents, other_names)