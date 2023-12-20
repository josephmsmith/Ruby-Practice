#!/usr/bin/env ruby

=begin
1. Implement BoutiqueInventory.item_names, which should return a list of the item names ordered alphabetically.
2. Implement BoutiqueInventory.cheap which should return any items that cost less than $30.
3. Implement BoutiqueInventory.out_of_stock which should return any items that have no stock (where quantity_by_size is empty).
4. Implement BoutiqueInventory.stock_for_item(name) to return the stock of an item by its name:
5. Implement BoutiqueInventory.total_stock to calculate the total amount of items in your storeroom:

=end

shoes = { price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }
coat = { price: 65.00, name: "Coat", quantity_by_size: {} }
handkerchief = { price: 19.99, name: "Handkerchief", quantity_by_size: {} }
items = [shoes, coat, handkerchief]

class BoutiqueInventory
    def initialize(items)
      @items = items
    end
  
    def item_names
      # return item names alphabetically by indexing :name in enumerator
      @items.map{|item| item[:name]}.sort
    end
  
    def cheap
      @items.select{|item| item[:price] < 30.00 }
    end
  
    def out_of_stock
      # return items w/ no stock. qty by size is empty
      @items.select{|item| item[:quantity_by_size].none?}
    end
  
    def stock_for_item(name)
      # Find the item by name and return its quantity_by_size
      item = @items.find { |item| item[:name] == name }
      item ? item[:quantity_by_size] : nil
    end
  
    def total_stock
      # calculate total amount of items in store room
      @items.sum{|item|item[:quantity_by_size].values.sum}
    end
  
    private
    attr_reader :items
  end

 puts BoutiqueInventory.new(items).item_names
 puts BoutiqueInventory.new([]).cheap
 puts BoutiqueInventory.new(items).out_of_stock
 puts BoutiqueInventory.new(items).total_stock
  