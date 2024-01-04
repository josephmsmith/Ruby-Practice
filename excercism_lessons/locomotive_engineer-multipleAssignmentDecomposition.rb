#!/usr/bin/env ruby

=begin
1. Implement a method generate_list_of_wagons() that accepts an arbitrary number of wagon IDs. 
Each ID will be a positive integer. The method should then return the given IDs as a single array.

2. Implement a method fix_list_of_wagons() that takes two arrays containing wagon IDs. 
It should reposition the first two items of the first array to the end, and insert the values from 
the second array behind (on the right hand side of) the locomotive ID (1). The method should then 
return a array with the modifications.

3. Implement a method add_missing_stops() that accepts a routing hash followed by a variable number 
of keyword arguments. These arguments could be in the form of a hash holding one or more stops, or 
any number of stop_<number>: "city" keyword pairs. Your method should then return the routing hash 
updated with an additional key that holds a array of all the added stops in order.

4. Implement a method called extend_route_information() that accepts two hashes. 
The first hash contains the origin and destination cities the train route runs between.

=end



class LocomotiveEngineer
    def self.generate_list_of_wagons(*wagon_ids)
      wagon_ids.to_a
    end
  
    def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
      a, b, c, *rest = each_wagons_id
      [c, *missing_wagons, *rest, a, b]
    end
  
    def self.add_missing_stops(routing_hash, **stops)
      # Sort the stops by their keys (stop_1, stop_2, etc.) and extract the values
      sorted_stops = stops.sort_by { |key, value| key.to_s }.map { |key, value| value }
  
      # Update the routing hash with an additional key for stops
      routing_hash[:stops] = sorted_stops
  
      routing_hash
    end
  
    def self.extend_route_information(route_info, additional_info)
      route_info.merge(additional_info)
    end
end
  
  
  puts LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])