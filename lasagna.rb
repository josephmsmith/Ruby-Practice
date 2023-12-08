
# exercise introduces classes

class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40       # capitals signal constants
    
    def remaining_minutes_in_oven(actual_minutes_in_oven)
      EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    end
  
    def preparation_time_in_minutes(layers)
      layers * 2
    end
  
    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)   # : represents named arguments v  positional arguments.
      preparation_time_in_minutes(number_of_layers) + (actual_minutes_in_oven)
    end
end
  
puts Lasagna::EXPECTED_MINUTES_IN_OVEN
puts Lasagna.new.total_time_in_minutes(number_of_layers: 3,actual_minutes_in_oven: 30)
puts Lasagna.new.remaining_minutes_in_oven(20)
puts Lasagna.new.preparation_time_in_minutes(1)
puts Lasagna.new.preparation_time_in_minutes(9)
puts Lasagna.new.total_time_in_minutes(number_of_layers:1,actual_minutes_in_oven: 0)