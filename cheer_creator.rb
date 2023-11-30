#!usr/local/bin/env ruby

=begin

each play, if team got >10 yards you give high five
if they don't mvoe forward 1 yard you say 'shh'
1-10 yards you say Ra! for every yard

input: integer
output: a string of cheer

=end

print "How many yards did your team get? : "
yards = gets.chomp.to_i

def cheer(yards)
    if yards > 10
        puts "High Five!"
    elsif yards < 1
        puts "shh"
    else
        yards.times{print "Ra! "}
        puts
    end
end

cheer(yards)