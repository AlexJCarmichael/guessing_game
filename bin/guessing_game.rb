require_relative '../lib/computer_number.rb'
require_relative '../lib/number_of_guesses.rb'

class GuessingGame
  puts "Hello, let us play a guessing game. I will pick a number 1-100, what is it?"
  number = ComputerNumber.new
  human_guess = gets.chomp.to_i
  guesses = NumberOfGuesses.new
  guesses.user_guess.push(human_guess)
end
