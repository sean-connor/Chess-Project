require_relative 'pieces.rb'

class NullPiece < Piece

  def initialize(pos)
    super(nil, pos)
  end

  def method_missing(*args, &block)
    self
  end

  def to_s
    " "
  end
end
