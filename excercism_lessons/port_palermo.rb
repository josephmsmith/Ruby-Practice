#!/usr/bin/env ruby

=begin
1. The first thing you need to do is to create the identifier for the port of Palermo. 
    The identifier are the first four letters of the name of the port, in uppercase.
    Define the Port::IDENTIFIER constant to be a symbol with the value :PALE.

2. Define the Port.get_identifier method to take a string as an argument, and returns the identifier as a symbol for that port.

3. Define the Port.get_terminal method to take a symbol as an argument which is the identifier of the ship. 
    The method should return the terminal as a symbol.
=end

module Port
# TODO: define the 'IDENTIFIER' constant
    IDENTIFIER = :PALE

    def self.get_identifier(city)
        city[0..3].upcase.to_sym
    end

    def self.get_terminal(ship_identifier)
        ship_identifier.to_s[0..4] =~ /OIL|GAS/ ? :A : :B
    end
end

puts Port.get_identifier("San Diego")
puts Port.get_terminal(:GAS906)