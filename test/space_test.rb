require 'minitest/autorun'
require_relative '../lib/space'

class SpaceTest < Minitest::Test
  def setup
    @s = Space.new(3,4,0)
  end

  def test_exists
    assert Space
  end

  def test_inits_with_coords
    assert_equal 3, @s.x
    assert_equal 4, @s.y
    assert_equal 0, @s.val
  end

  def test_places_and_removes_pieces
    assert_equal 0, @s.val
    @s.place(1)
    assert_equal 1, @s.val
    @s.place(0)
    assert_equal 0, @s.val
  end

  def test_knows_when_its_on_same_row
    t = Space.new(2,4,1)
    assert @s.shares_row_with(t)

    t = Space.new(2,5,1)
    refute @s.shares_row_with(t)
  end

  def test_knows_when_its_on_same_column
    t = Space.new(3,5,1)
    assert @s.shares_column_with(t)

    t = Space.new(2,4,1)
    refute @s.shares_column_with(t)
  end

  def test_knows_when_its_on_same_diagonal
    t = Space.new(4,5,1)
    assert @s.shares_diagonal_with(t)

    t = Space.new(2,3,1)
    assert @s.shares_diagonal_with(t)

    t = Space.new(2,5,1)
    assert @s.shares_diagonal_with(t)

    t = Space.new(4,3,1)
    assert @s.shares_diagonal_with(t)

    t = Space.new(2,6,1)
    refute @s.shares_diagonal_with(t)
  end

  def test_detects_equality_on_coordinates
    t = Space.new(3,4,1)
    assert(@s.equals(t))

    t = Space.new(3,5,1)
    refute(@s.equals(t))

    assert(@s.equals(3,4))
    refute(@s.equals(3,5))
  end
end
