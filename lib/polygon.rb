class Polygon
  attr_accessor :sides, :lengths

  def initialize (sides, lengths)
    @sides = sides
    @lengths = lengths
  end

  def sum_of_interior_angles
    180 * (@sides - 2)
  end

  def number_of_corners
  end

  def degree_of_freedom
  end

  def area
  end
end
