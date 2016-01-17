require_relative 'null_piece.rb'
require_relative 'pawn.rb'
class Board

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    populate
  end


  def [](row,col)
    @grid[row][col]
  end

  def populate
    @grid.each_with_index do |row, row_i|
      row.each_with_index do |col, col_i|
          if (2..5).cover?(row_i) || row_i == 0 || row_i == 7
            @grid[row_i][col_i] = NullPiece.new([row_i, col_i])
          elsif row_i == 1
            @grid[row_i][col_i] = Pawn.new("black", [row_i, col_i])
          elsif row_i == 6
            @grid[row_i][col_i] = Pawn.new("white", [row_i, col_i])
          end

      end
    end
  end

  def in_bounds?(pos)
    (0...8).cover?(pos[0]) && (0...8).cover?(pos[1])
  end
end
