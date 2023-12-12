#!/usr/bin/env ruby

=begin 

1. At its slowest speed (1), 221 cars are produced each hour. 
The production increases linearly with the speed. 
So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. 
However, higher speeds increase the likelihood that faulty cars are produced, which then have to be discarded. 

The following table shows how speed influences the success rate:

1 to 4: 100% success rate.
5 to 8: 90% success rate.
9: 80% success rate.
10: 77% success rate.

2. Implement the AssemblyLine#production_rate_per_hour method to calculate the assembly line's production rate per hour, 
taking into account its success rate. 
Note that the value returned is an instance of Float.

=end

class AssemblyLine
    def initialize(speed)
      @speed = speed
    end
  
    def production_rate_per_hour
      if @speed <= 4 && @speed >0
        @speed * 221
      elsif @speed <= 8
        @speed * 221 * 0.9
      elsif @speed == 9
        @speed * 221 * 0.8
      else
        @speed * 221 * 0.77
      end
    end
  
    def working_items_per_minute
      (production_rate_per_hour / 60).floor
    end
  end
  

puts AssemblyLine.new(1).production_rate_per_hour
puts AssemblyLine.new(5).production_rate_per_hour
puts AssemblyLine.new(8).working_items_per_minute