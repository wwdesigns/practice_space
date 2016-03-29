#Get my number game

puts "Welcome to Get My Number!"

#Get users name and greet them
print "What's your name? "
input = gets
name = input.chomp  
puts "Welcome, #{name}!"

#Store a random number for player to guess
puts "I've picked a number between 1 and 100"
puts "Can you guess what it is?"
target = rand(100) + 1

#Track how many guesses the player has had
num_guesses = 0

#Track whether the player guessed the right number
guessed_it = false

until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left!"
    print "Make a guess: "
    guess = gets.to_i
    
    num_guesses += 1
    
    #Compare guess to target
    #Print the appropriate message
    if guess < target
        puts "Oops. Your guess was too low."
    elsif guess > target
        puts "Oops. Your guess was too high."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end

#If player ran out of turns, tell them what the number was
if not guessed_it
    puts "Sorry.  You didn't get my number. My number was #{target}."
end
