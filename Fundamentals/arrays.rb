# 
=
Let's put our understanding of conditionals to the test. We're going to create a simple method with one input. Our method will be called guess_number and the input will be our guess. There will be three possible outcomes to this method. 

Try the following methods at least once either on a separate Ruby file or on irb.
    .at or .fetch => returns the element at the given index.
        - A negative index counts from the end of self.
        - Returns nil if the index is out of range.
        - a = [ "a", "b", "c", "d", "e" ]
        - a.at(0)     #=> "a"
        - a.at(-1)    #=> "e"

    .delete(obj) => deletes all items from self that are equal to the obj and modifies the array
        - if no matching item is found, will return nil
        - you may add an {optional code block} to return if the item is not found
            - a.delete("Pikachu"){"not found"}

    .reverse => returns a new array containing selfs elements in reverse order
        - ["a", "b", "c"].reverse => ["c", "b", "a"]

    .length => returns the number of elements in self. May be zero.
        - [ 1, 2, 3, 4, 5 ].length   #=> 5
        - [].length                  #=> 0

    .sort => Returns a new array created by sorting self.
        - Comparisons for the sort will be done using the <=> operator or using an optional code block.
        - a = [ "d", "a", "e", "c", "b" ]
        - a.sort    => ["a", "b", "c", "d", "e"]
        - a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

    .slice => Deletes the element(s) given by an index 
        - (optionally up to length elements) or by a range.
        - a = [ "a", "b", "c" ]
        - a.slice!(1)     #=> "b"
        - a               #=> ["a", "c"]
        - a.slice!(-1)    #=> "c"
        - a               #=> ["a"]
        - a.slice!(100)   #=> nil
        - a               #=> ["a"]

    .shuffle => shuffles and rearranges the array; does not modify the original
        - a = [ 1, 2, 3 ]           #=> [1, 2, 3]
        - a.shuffle                 #=> [2, 3, 1]
        - a                         #=> [1, 2, 3]

    .join(separator=$) => Returns a string created by converting each element of the array to a string, separated by the given separator. 
        - If the separator is nil, it uses current $,. 
        - If both the separator and $, are nil, it uses empty string.
        - [ "a", "b", "c" ].join        #=> "abc"
        - [ "a", "b", "c" ].join("-")   #=> "a-b-c"

    .insert => Inserts the given values before the element with the given index.
        - Negative indices count backwards from the end of the array, where -1 is the last element. 
        - If a negative index is used, the given values will be inserted after that element, so using an index of -1 will insert the values at the end of the array.
        - a = %w{ a b c d }
        - a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
        - a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

    values_at() -> returns an array with values specified in the param
        e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
        - Returns an array containing the elements in self corresponding to the given selector(s).
        - The selectors may be either integer indices or ranges.
    RESOURCES
    https://www.ruby-lang.org/en/documentation/
    https://ruby-doc.org/core-2.4.1/Array.html
=end

a = ["Gotta", "Catch'em", "All", "Pokemon!"]
b = [5, 6, 7, 8, 9, 10, 4, 3]

puts a
b.delete(5)