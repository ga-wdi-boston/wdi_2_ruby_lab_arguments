class Polygon
  attr_accessor :number_of_sides
# Defined the initialize method, allowing for any number of sides to be passed as arguments
  def initialize(*sides)
    @number_of_sides = sides.length
  end
# Defined a method to calculate number of corners, which is equal to number of sides
  def number_of_corners
    @number_of_sides
  end
# Defined a method to sum the interior angles
  def sum_of_interior_angles
    180 * (@number_of_sides - 2)
  end

  def degrees_of_freedom
    2 * @number_of_sides
  end
end
