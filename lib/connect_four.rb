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

end