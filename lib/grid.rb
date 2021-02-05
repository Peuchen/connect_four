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
    #width = grid.flatten.max.to_s.size + 2
    #puts grid.map { |pos| pos.map { |i| i.to_s.rjust(width) }.join }
  end
end