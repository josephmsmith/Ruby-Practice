#!/usr/local/bin/env ruby

=begin

6 bowls of rk
if bowl %3 then pop
if bowl =! %3 and odd then snap
if bowl != %3 and even then crackle

input: 6 integers on different lines
output: 6 sounds on one line deliminated by spaces

=end

def snapcracklepop
    sounds_array = []
    6.times do |number|
        print "How many rice krispies are in the bowl? : "
        number = gets.chomp.to_i
        if number %3 == 0
            sound = "pop"
        elsif number.even?
            sound = "snap"
        else sound = "crackle"
        end
        sounds_array << sound
    end
    puts sounds_array.join(" ")
end

snapcracklepop
