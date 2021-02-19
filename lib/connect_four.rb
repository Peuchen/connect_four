#create Grid class
#create Player class

#set up Grid class to create a grid at initialization

require './lib/grid'
require './lib/player'

class Game
  def initialize
    grid = Grid.new
    player1 = Player.new('X')
    player2 = Player.new('O')
  end

  def play
  end

  def take_turn

  end

  def ask_for_input
    puts "In which column would you like to drop your disk?"
    input = $stdin.gets.chomp.to_i
    until input.is_a?(Numeric)
      "Please enter a proper column"
      input = $stdin.gets.chomp.to_i
    end
    input
  end

end