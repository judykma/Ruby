# 
=begin
Let's put our understanding of conditionals to the test. We're going to create a simple method with one input. Our method will be called guess_number and the input will be our guess. There will be three possible outcomes to this method. 

The user guessed correctly, return "You got it!"
The guess was too high, return "Guess was too high!"
The guess was too low, return "Guess was too low!"

If you want to challenge yourself, try using unless instead of if as much as you can.
=end


def guess_number (guess)
    number = 25
    if guess == 25
        puts "You got it!"
    end
    unless guess < 25
        puts "Guess was too high!"
    else
        puts "Guess was too low!"
    end
end
guess_number 17
