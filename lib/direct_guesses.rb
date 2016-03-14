
class DirectGuesses
  attr_accessor :user, :computer, :direction
  def initialize(user, computer)
    @user = user
    @computer = computer
    @direction = ""
  end

  def provide_direction
    if @user < @computer
      @direction = "You are too low, strive higher."
    elsif @user > @computer
      @direction = "Whoa Icarus! Go lower please."
    elsif @user == @computer
      @direction = true
    else
      @direction = "Does not compute."
    end
  end
end
