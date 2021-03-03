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
    top_cell = grid[0][column-1]

    if column >= 1 && column <= 7
      if top_cell == "|_|"
        true
        else
          puts "This column is occupied"
        end
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

  def win?(column = 0, row = 0)
    while row <= 5
      if grid[row][column] == "|X|" || grid[row][column] == "|O|"
        if (grid[row][column] == grid[row][column+1]) && (grid[row][column] == grid[row][column+2]) && (grid[row][column] == grid[row][column+3])
          puts "You've won"
          return true
        elsif (grid[row][column] == grid[row+1][column]) && (grid[row][column] == grid[row+2][column]) && (grid[row][column] == grid[row+3][column])
          puts "You've won"
          return true
        elsif (grid[row][column] == grid[row+1][column+1]) && (grid[row][column] == grid[row+2][column+2]) && (grid[row][column] == grid[row+3][column+3])
          puts "You've won"
          return true
        end
      else
        false
      end
      row += 1
    end
  end

end