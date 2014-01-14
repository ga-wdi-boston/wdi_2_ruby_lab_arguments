class Polygon
  attr_accessor :sides, :lengths

  def initialize (sides, lengths)
    @sides = sides
    @lengths = *lengths
  end

  def sum_of_interior_angles
    180 * (@sides - 2)
  end

# for n-gon, the number of sides equals the number of corners
  def number_of_corners
    @sides
  end

# for n-gon, the degree of freedom is 2n
  def degree_of_freedom
    (@sides * 2)
  end
end
