# get my number game

puts "Welcome to 'Get My Number!'"

# get player's name and greet them
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!" 

#store random number for player to guess
puts "I have a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#keep track of player's guesses
num_guesses = 0

#track whether the player has guesses correctly
guessed_it = false 

until num_guesses == 10 || guessed_it

  puts "You have #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i
  
  num_guesses += 1

  #compare guess to target and print appropriate message
  if guess < target 
    puts "Sorry, your guess was too LOW."
  elsif guess > target 
    puts "Sorry, your guess was too HIGH."
  elsif guess == target 
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true 
  end

end

#if guesses run out, reveal the target number
unless guessed_it
  puts "Sorry, you didn't guess my number. It was #{target}."
end