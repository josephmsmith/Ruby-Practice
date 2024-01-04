#!/usr/bin/env ruby

class LocomotiveEngineer
    def self.generate_list_of_wagons(*wagon_ids)
      wagon_ids.to_a
    end
  
    def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
      a, b, c, *rest = each_wagons_id
      [c, *missing_wagons, *rest, a, b]
    end
  
    def self.add_missing_stops
      raise 'Please implement the LocomotiveEngineer.add_missing_stops method'
    end
  
    def self.extend_route_information(route, more_route_information)
      raise 'Please implement the LocomotiveEngineer.extend_route_information method'
    end
  end
  
  puts LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])