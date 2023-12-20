#!/usr/bin/env ruby

=begin
Goal: Optimize boutique inventory class to include shorthands
Don't use shorthands unless it is a team standard
Use of OpenStruct is convenient and flexible but can be slower

=end

require 'ostruct'

class BoutiqueInventory
  # Reader method for accessing the items array
  attr_reader :items
  
  # Initialize method to create a new instance of BoutiqueInventory
  def initialize(items)
    # Converts each item hash in the provided array to an OpenStruct object
    # This allows for more object-oriented access to item properties
    @items = items.map { |item| OpenStruct.new(item) }
  end

  # Method to get the names of all items, sorted alphabetically
  def item_names
    # Maps over the items, extracting the name of each item
    # Sorts the resulting array of names alphabetically
    @items.map(&:name).sort
  end

  # Method to calculate the total stock of all items
  def total_stock
    # First, maps over the items to get the quantity_by_size hash from each item
    # Then, maps over these hashes to get their values (the quantities)
    # Finally, sums up all these quantities to get the total stock
    @items.map(&:quantity_by_size).map(&:values).sum(&:sum)
  end
end

shoes = { price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }
coat = { price: 65.00, name: "Coat", quantity_by_size: {} }
handkerchief = { price: 19.99, name: "Handkerchief", quantity_by_size: {} }
items = [shoes, coat, handkerchief]
puts BoutiqueInventory.new(items).total_stock
p BoutiqueInventory.new(items).item_names