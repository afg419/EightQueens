require 'minitest/autorun'
require_relative '../lib/eight_queens'

class EightQueensTest < Minitest::Test
  def setup
    @eq = EightQueens.new(Chessboard.new(8))
  end

  def test_exists
    assert EightQueens
  end

  def can_count_queens
    @eq.board.set_space(3,3,1)
    @eq.board.set_space(3,5,1)
    @eq.board.set_space(2,5,1)

    assert_equal 3, @eq.queen_count
  end
end
