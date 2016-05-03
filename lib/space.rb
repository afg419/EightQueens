class Space
  attr_reader :x, :y
  attr_accessor :val

  def initialize(x, y, val)
    @x = x
    @y = y
    @val = val
  end

  def equals(x_or_space, y_coord = nil)
    if x_or_space.class == Space
      x_or_space.x == x && x_or_space.y == y
    else
      x_or_space == x && y_coord == y
    end
  end

  def is_queen?
    val == 1
  end

  def place(new_val)
    self.val = new_val
  end

  def shares_row_with(space)
    y == space.y
  end

  def shares_column_with(space)
    x == space.x
  end

  def shares_diagonal_with(space)
    (y - space.y == x - space.x) || (y - space.y ==  - x + space.x)
  end

  def queen_killable?(space)
    (shares_row_with(space) || shares_column_with(space) || shares_diagonal_with(space)) && !equals(space)
  end
end
