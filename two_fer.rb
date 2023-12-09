#!/usr/bin/env ruby

=begin
Your task is to determine what you will say as you give away the extra cookie.
If your friend likes cookies, and is named Do-yun, then you will say:

One for Do-yun, one for me.

If your friend doesn't like cookies, you give the cookie to the next person in line at the bakery. Since you don't know their name, you will say you instead.

One for you, one for me.
=end

class TwoFer
    def self.two_fer(name = "you")
        "One for #{name}, one for me."
    end
end

puts TwoFer.two_fer("Bob")
puts TwoFer.two_fer
puts TwoFer.two_fer("Alice")