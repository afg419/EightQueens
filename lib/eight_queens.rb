require_relative 'chessboard'

class EightQueens

  attr_reader :board

  def initialize(chessboard)
    @board = chessboard
  end

  def queen_count
    @board.spaces.reduce(0) {|acc, space| acc + space.val}
  end
  
end
