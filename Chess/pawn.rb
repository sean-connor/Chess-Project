require_relative 'pieces.rb'
class Pawn < Piece
  def initialize(color, pos)
    super(color, pos)
  end

  def to_s
    return "\u265F".encode('utf-8') if @color == "black"
    "\u2659".encode('utf-8') if @color == "white"
  end
end
