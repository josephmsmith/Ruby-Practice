#!/usr/bin/env ruby

=begin
# helper methods include .size, .sum, .reverse
# enumeration is act of stepping through a collection

1. For comparison purposes, you always keep a copy of last week's counts nearby, 
which were: 0, 2, 5, 3, 7, 8 and 4. Implement the BirdCount.last_week method that returns last week's counts:
2. Implement the BirdCount#yesterday method to return how many birds visited your garden yesterday. The bird 
counts are ordered by day, with the first element being the count of the oldest day, and the last element being today's count.
3. Implement the BirdCount#total method to return the total number of birds that have visited your garden:
4. Some days are busier than others. A busy day is one where five or more birds have visited your garden. Implement 
the BirdCount#busy_days method to return the number of busy days:
5. Implement the BirdCount#day_without_birds? method that returns true if there was a day at which zero birds visited 
the garden; otherwise, return false:

=end

class BirdCount
    def self.last_week
      # self initialize and define an array to return
      last_week = [0, 2, 5, 3, 7, 8, 4]
    end
  
    def initialize(birds_per_day)
        # init using instance variable 
      @birds_per_day = birds_per_day
    end
  
    def yesterday
        # index from the end
      @birds_per_day[-2]
    end
  
    def total
        #calculate total using sum of all array objects
      @birds_per_day.sum
    end
  
    def busy_days
        # enumerator which counts all N greater or = to 5
      @birds_per_day.count{|n|n >= 5}
    end
  
    def day_without_birds?
        # check if any values are 0?
      @birds_per_day.any?(0)
    end
  end


# test  
p BirdCount.last_week
puts BirdCount.new([0,0,1,0,0,1]).yesterday
puts BirdCount.new([0, 0, 1, 0, 0, 1, 0]).total
puts BirdCount.new([4, 9, 5, 7, 8, 8, 2]).busy_days
BirdCount.new([4, 5, 9, 10, 9, 4, 3]).day_without_birds?
