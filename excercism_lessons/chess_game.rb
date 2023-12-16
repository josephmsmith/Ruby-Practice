#!/usr/bin/env ruby

module Chess
    RANKS = (1..8)
    FILES = ('A'..'H')

    def self.valid_square?(file, rank)
        RANKS.include?(rank) && FILES.include?(file)
    end

    def self.nick_name(first_name, last_name)
        (first_name[..1] + last_name[-2..]).upcase
    end

    def self.move_message(first_name, last_name, square)
        rank = square[1].to_i
        file = square[0].upcase
        puts valid_square?(file,rank) ? nick_name(first_name, last_name) + " moved to #{square}" : nick_name(first_name, last_name) + " attempted to move to #{square}, but that is not a valid square"
    end
end


#test
Chess.move_message("John", "Doe", "A1")
Chess.move_message("Lindsy", "Mobley", "B4")