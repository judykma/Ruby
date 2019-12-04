# 
=begin

STUDYING RANGES
Challenge: Useful Methods

Go ahead and try the following methods:

    .include?(value) => true or false
        - Returns true if obj is an element of the range, false otherwise. 
        - If begin and end are numeric, comparison is done according to the magnitude of the values.
        - ("a".."z").include?("g")   #=> true
        - ("a".."z").include?("A")   #=> false
        - ("a".."z").include?("cc")  #=> false
        
    .last => returns the last object in range
    .max => returns the maximum value in range
    .min => returns the minimum value in range

RESOURCES:
https://ruby-doc.org/core-2.6.1/Range.html


NOTES:
A Range represents an interval—a set of values with a beginning and an end. 
Ranges may be constructed using the s..e and s...e literals, or with ::new. 
    - Ranges constructed using .. run from the beginning to the end inclusively. 
    - Those created using ... exclude the end value. 
When used as an iterator, ranges return each value in the sequence.

=end

(-1..-5).to_a      #=> []                           THIS IS BECAUSE .to_a ONLY INCREMENTS
(-5..-1).to_a      #=> [-5, -4, -3, -2, -1]         
('a'..'e').to_a    #=> ["a", "b", "c", "d", "e"]    DOES NOT HAVE TO INCLUDE INTEGERS
('a'...'e').to_a   #=> ["a", "b", "c", "d"]

x = (1..5)
puts "Class Name: #{x.class}"

puts "It does include 3!" if x.include? 3
#print "this" on the screen if x includes 3

puts "The last number of this range is " + x.last.to_s #function .last returns an integer
puts "The maximum number of this range is " + x.max.to_s #function .to_s changes the integer to a string
puts "The minimum number of this range is " + x.min.to_s

y = ('a'..'z')
puts y.to_a.shuffle.to_s