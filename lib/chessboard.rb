require 'pry'
require_relative 'space'

class Chessboard
  attr_reader :spaces

  def initialize(n)
    @spaces = (0..(n-1)).map do |i|
      (0..(n-1)).map do |j|
        Space.new(i, j, 0)
      end
    end.flatten
  end

  def get_space(x,y)
    if in_bounds(x,y)
      spaces.find{|space| space.x == x && space.y == y}
    else
      Space.new(x,y, :not_on_board)
    end
  end

  def set_space(x,y,i)
    get_space(x,y).val = i if get_space(x,y).val != :not_on_board
  end

  def in_bounds(x,y)
    0 <= x && x <= 7 && 0 <= y && y <= 7
  end
end
