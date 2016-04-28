require 'pry'
require_relative 'space'

class Chessboard
  attr_reader :rows

  def initialize(n) #n is dimension of board
    @spaces = (0..(n-1)).map do |i|
      (0..(n-1)).map do |j|
        new Space(i, j, 0)
      end
    end
  end

  def get(x,y)
    if in_bounds(x,y)
      spaces.find{|space| space.x == x && space.y == y}
    else
      Space.new(x,y, :not_on_board)
    end
  end

  def in_bounds(x,y)
    0 <= x && x <= 7 && 0 <= y && y <= 7
  end
end
