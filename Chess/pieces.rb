class Piece
  attr_reader :pos, :color

  def initialize(color, pos)
    @color = color
    @pos = pos
  end

  def exists?
  end
end
