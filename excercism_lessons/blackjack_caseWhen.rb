#!/usr/bin/env ruby

=begin
# using CASE
1. Implement the method Blackjack.parse_card which takes a card as a string as an argument. 
    The method should return the value of the card as an integer.
2. Implement the method Blackjack.card_range which takes two cards as strings as arguments. 
    The method should return the name of the range of values the two cards fall into.
3. Implement the method Blackjack.first_turn which takes three cards as strings as arguments. 
    The method should return the decision you should take as a string.
=end

module Blackjack
    # original method using case:when:then statement
    def self.parse_card(card)
      case card.downcase
        when "ace" then 11
        when "two" then 2
        when "three" then 3
        when "four" then 4
        when "five" then 5
        when "six" then 6
        when "seven" then 7
        when "eight" then 8
        when "nine" then 9
        when "ten", "jack", "queen", "king" then 10
        else 0
        end
    end
    # # alternate method using a Hash.
    # # time complexity is 0(1) direct value, where as case is 0(n), more scalable, readable, MORE MEMORY THOUGH
    # def self.parse_card(card)
    #     values = {"ace" => 11, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, 
    #     "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10}
    #     values[card.downcase] || 0
    #   end
  
    def self.card_range(card1, card2)
        value = parse_card(card1) + parse_card(card2)
        case value
            when ..11 then 'low'
            when ..16 then 'mid'
            when ..20 then 'high'
            else 'blackjack'
        end
    end
  
    def self.first_turn(card1, card2, dealer_card)
      card1_value = parse_card(card1)
      card2_value = parse_card(card2)
      dealer_card_value = parse_card(dealer_card)
      total_value = card1_value + card2_value

      dealer_has_10_or_11 = [10, 11].include?(dealer_card_value)
      
      case
      when card1_value == 11 && card2_value == 11 
        "P"  # stands for "Pair" or "Split"
      when total_value == 21 && dealer_has_10_or_11
        "S"  # stands for "Stand"
      when total_value == 21 && !dealer_has_10_or_11
        "W"  # stands for "Win"
      when (17..20).include?(total_value)
        "S"
      when (12..16).include?(total_value) && dealer_card_value >= 7
        "H"  # stands for "Hit"
      when (12..16).include?(total_value) && dealer_card_value < 7
        "S"
      when total_value <= 11
        "H"
      end
  end
end


module BlackjackOptimized
    # # alternate method using a Hash.
    # time complexity is 0(1) direct value, where as case is 0(n), more scalable, readable, MORE MEMORY THOUGH
    def self.parse_card(card)
        values = {"ace" => 11, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, 
        "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10}
        values[card.downcase] || 0
      end
  
    def self.card_range(card1, card2)
        value = parse_card(card1) + parse_card(card2)
        case value
            when ..11 then 'low'
            when ..16 then 'mid'
            when ..20 then 'high'
            else 'blackjack'
        end
    end
  
    def self.first_turn(player_card1, player_card2, dealer_card)
        card1_value = parse_card(player_card1)
        card2_value = parse_card(player_card2)
        total_value = card1_value + card2_value
        dealer_card_value = parse_card(dealer_card)
      
        return "P" if card1_value == 11 && card2_value == 11  # Early return for Pair of Aces
        return "W" if total_value == 21 && ![10, 11].include?(dealer_card_value)  # Early return for winning condition
      
        case total_value
        when 21
          "S"  # Stand when total is 21 and dealer has 10 or 11
        when 17..20
          "S"  # Stand when total is between 17 and 20
        when 12..16
          dealer_card_value < 7 ? "S" : "H"  # Stand if dealer card is less than 7, else Hit
        else
          "H"  # Hit in all other cases (total <= 11)
        end
    end
end


puts Blackjack.parse_card("ace")
puts Blackjack.card_range("four", "two")
puts Blackjack.first_turn("four","two","three")
puts Blackjack.first_turn("ace", "ace", "two")
puts BlackjackOptimized.first_turn("four","two","three")
puts BlackjackOptimized.first_turn("ace", "ace", "two")


=begin
# key takeaways
1. When using 'when' comparison operators use '==='
2. When using ranges in 'when' statement, ensure they are at beginning
3. Case/when is good for comparing single values while if/elsif/else are better for complex logic
4. Use early returns for efficiency and readability
5. Minimize redundant computations
6. Use clean naming conventions
=end