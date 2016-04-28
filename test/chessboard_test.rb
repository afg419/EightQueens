require 'minitest/autorun'
require_relative '../lib/chessboard'

class ChessboardTest < Minitest::Test
  def setup
    @c = Chessboard.new(8)
  end

  def test_exists
    assert Chessboard
  end

  def test_inits_with_spaces
    assert_equal 8*8, @c.spaces.length
    @c.spaces.each do |space|
      assert_equal Space, space.class
      assert_equal 0, space.val
    end
  end

  def test_gets_space
    i = rand(0..7)
    j = rand(0..7)
    space = @c.get(i,j)

    assert_equal Space, space.class
    assert_equal i, space.x
    assert_equal j, space.y
    assert_equal 0, space.val

    space = @c.get(i, 9)
    assert_equal Space, space.class
    assert_equal i, space.x
    assert_equal 9, space.y
    assert_equal :not_on_board, space.val
  end
end
