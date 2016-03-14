require_relative '../lib/computer_number.rb'
require_relative '../lib/number_of_guesses.rb'
require_relative '../lib/repeat_guess.rb'

class GuessingGame
  puts "Hello, let us play a guessing game. I will pick a number 1-100, what is it?"
  number = ComputerNumber.new
  guesses = NumberOfGuesses.new
  repeat = RepeatGuess.new
  old_guess = repeat.old_guess
  puts old_guess
  human_guess = gets.chomp.to_i
  loop do
    puts "Human guess: #{human_guess} Old Guess: #{old_guess}"
    if human_guess == old_guess
      puts "You have guessed this number already, please guess again."
      human_guess = gets.chomp.to_i
      break
    else
      guesses.user_guess.push(human_guess)
      old_guess = human_guess
    end
  end
end
