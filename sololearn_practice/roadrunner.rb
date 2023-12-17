#!/usr/local/bin/env ruby

=begin

coyote is chasing roadrunner
start 50 ft distance apart
task: determine if roadrunner made to safety

input: distance
input: roadrunner speed ft/s
input: coyotes speed ft/s
output: meep meep or yum

=end

# if coyote time < than rr than coyote won

def roadrunnner_safety
    print "What distance is the roadrunner running in feet? : "
    rr_distance = gets.chomp.to_i 
    print "What is roadrunner speed?(ft/s) : "
    rr_speed = gets.chomp.to_i
    print "What is coyote speed?(ft/s) : "
    coy_speed = gets.chomp.to_i

    rr_time = rr_distance/rr_speed          # time in seconds
    coy_time = (rr_distance+50)/coy_speed         
    
    puts rr_time < coy_time ? "meep meep" : "yum"
end

roadrunnner_safety