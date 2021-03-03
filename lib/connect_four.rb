#create Grid class
#create Player class

#set up Grid class to create a grid at initialization

require './lib/grid'
require './lib/player'

class Game
  attr_reader :player1, :player2
  attr_accessor :grid

  def initialize
    @grid = Grid.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
  end

  def play
    until nil?
      grid.visualize_grid
      column = ask_for_input(player1)
      grid.update_grid(player1, column - 1)
      grid.visualize_grid
      column = ask_for_input(player2) #unless game_over?
      grid.update_grid(player2, column - 1)
    end
  end

  def ask_for_input(player, input = 0)
    puts "Where do you want to place the '#{player.disk}'? Please enter a number."
    input = $stdin.gets.chomp.to_i

    until grid.free?(input)
      puts "Please enter a number."
      input = $stdin.gets.chomp.to_i
    end
    input
  end

end

Game.new.play