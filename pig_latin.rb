#!/usr/local/bin/env ruby

=begin

pig latin is the sam eowrds in the same order except 
you take the first letter of each word, add it to the end
then you add "ay" to the end

Goal: take in a string sentence
Output: translated string sentence

=end


# first using each method
print "What would you like to say in Pig Latin? :"
sentence = gets.chomp

def to_pig_latin(sentence)
    new_array = []
    sentence = sentence.split(' ')
    sentence.each do |word|
        first_letter = word[0]
        rest_of_word = word[1..-1]
        new_array<<rest_of_word + first_letter + 'ay'
    end
    puts new_array.join(' ')
end

to_pig_latin(sentence)

# use .map method / something with less lines

def pg_translate (sentence)
    new_array = sentence.split(' ')
    new_array.map!{|word| word[1..-1]+ word[0] + 'ay'}
    puts new_array.join(' ')
end
pg_translate(sentence)