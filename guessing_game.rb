# Ask player for their name
# say hello and explain rules
# pick a random number
# get player’s guess
# tell player if guess is correct or not
# loop to allow 3 guesses

# rand method: returns float in 0.0...1.0
# rand(100): returns integer in 0..99

puts '----------------------'
puts '| Ruby Guessing Game |'
puts '----------------------'
puts 'What is your name?'
name = gets.chomp
puts "\nHello, #{name}."
puts 'We are going to play a guessing game:'
puts 'I will choose a random number between 1 and 10'
puts 'and you will have three chances to guess it.'
number = rand(10) + 1
puts "\nOkay, I have my number."

1.upto(3) do |i|
  print "Guess #{i}: " 
  guess = gets.chomp
  if guess.to_i != number
    puts 'Sorry, that wasn’t it'
  else
    abort("\nCongratulations, #{name}! You guessed my number #{number}!")
  end
  
end
puts "\nThat was your last guess."
puts "My number was #{number}"
puts "Goodbye!"