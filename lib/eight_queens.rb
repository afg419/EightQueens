require_relative 'chessboard'

class EightQueens

  attr_reader :board

  def initialize(chessboard)
    @board = chessboard
  end
end
