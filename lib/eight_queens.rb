require_relative 'chessboard'
require_relative 'cartesian_product'

class EightQueens
  include Prod
  attr_reader :board

  def initialize(chessboard)
    @board = chessboard
  end

  def queens
    @board.spaces.select{|x| x.is_queen?}
  end

  def queens_count
    queens.count
  end

  def legal_arrangement?
    queen_pairs = Prod.cartesian(queens, queens)
    queen_pairs.all do |q1, q2|
      !q1.queen_killable?(q2)
    end
  end
end
