require "minitest/autorun"
require_relative '../bin/guessing_game.rb'


test = GuessingGame.new < MiniTest::Test

class GuessingTest
  def initialize
    @test = GuessingGame.new
  end

  def test_guessing_exists?
    assert @test
  end
end
