# QUESTION 1
Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. 
Also have the function return an array that only include numbers that are greater than 10 
(e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

arr = [3,5,1,2,7,9,8,13,25,32]

def question1 arr
    sum = 0
    arr.each {|i| sum = sum + i}
    puts sum
    arr.select {|i| i > 10}
    # arr.find_all {|i| i > 10}
    # arr.reject {|i| i < 10}
end
question1 [3,5,1,2,7,9,8,13,25,32]

# QUESTION 2
Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. 
Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
# arr.shuffle
# arr.each {|i| puts i}

arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
newarr = arr.shuffle
newarr.each {|i| puts i}
arr.select {|i| i.length > 5}

# QUESTION 3
Create an array that contains all 26 letters in the alphabet (this array must have 26 values). 
Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. 
If the first letter in the array is a vowel, have it display a message.

arr = ('a'..'z').to_a
newarr = arr.shuffle
newarr.last


# QUESTION 4
Generate an array with 10 random numbers between 55-100.


# QUESTION 5
Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). 
Display all the numbers in the array. 
Next, display the minimum value in the array as well as the maximum value



# QUESTION 6
Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)



# QUESTION 7
Generate an array with 10 random strings that are each 5 characters long