require_relative '../lib/computer_number.rb'
require_relative '../lib/number_of_guesses.rb'
require_relative '../lib/repeat_guess.rb'
require_relative '../lib/direct_guesses.rb'

class GuessingGame
  puts "Hello, let us play a guessing game. I will pick a number 1-100, what is it?"
  number = ComputerNumber.new
  guesses = NumberOfGuesses.new
  repeat = RepeatGuess.new
  direction = DirectGuesses.new(0,number.computer_number)
  old_guess = repeat.old_guess
  puts old_guess
  loop do
    human_guess = gets.chomp.to_i
    puts "Human guess: #{human_guess} Old Guess: #{old_guess}"
    if human_guess == old_guess
      puts "You have guessed this number already, please guess again."
    else
      guesses.user_guess.push(human_guess)
      old_guess = human_guess
    end
    direction.user = human_guess
    if direction.provide_direction == true
      puts "Winner! The number was #{number.computer_number}"
      break
    elsif guesses.user_guess.length == 5
      puts "Sorry, you have guessed too any times. You lose."
      break
    else
      puts "#{direction.provide_direction}"
    end
  end
end
