require 'minitest/autorun'
require_relative '../lib/eight_queens'

class EightQueensTest < Minitest::Test
  def setup
    @eq = EightQueens.new(Chessboard.new)
  end

  def test_exists
    assert EightQueens
  end
end
