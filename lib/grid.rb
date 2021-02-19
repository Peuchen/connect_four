class Grid
  attr_accessor :grid

  def initialize
    @grid = Array.new
    6.times do |row_idx|
      grid[row_idx] = Array.new
      7.times do |col_idx|
        grid[row_idx][col_idx] = "|_|"
      end
    end
  end

  def visualize_grid
    puts grid.map { |i| i.join }
  end

  def free?(column)
    top_cell = grid[5][column-1]

    if column >= 1 && column <= 7
      top_cell == "|_|" ? true : false
    else
      puts "This is not a valid column number."
    end
  end

  def update_grid(player, column, row = 5)
    while row >= 0
      if grid[row][column] == "|_|"
        grid[row][column] = "|#{player.disk}|"
        break
      else
        row -= 1
      end
    end
  end

end