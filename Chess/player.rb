require_relative 'display.rb'

class Player

  def initialize(name = "Player", display = Display.new(Board.new))
    @name = name
    @display = display
  end

  def move
    result = nil
    until result
      @display.render
      result = @display.get_input
    end
    result
  end

  def play
    while true
      move
    end
  end
end
