class Polygon
  attr_accessor :num_of_sides, :sides_length

  def initialize(*sides_length)
    @num_of_sides = sides_length.length
    @sides_length = sides_length
  end

  def number_of_corners
    @num_of_sides
  end

  def sum_of_interior_angles
    180 * (@num_of_sides - 2)
  end

  def degrees_of_freedom
    @num_of_sides * 2
  end

  def area
    # area = 1/2 x perimeter x apothem
    # apothem = @sides_length / (2 * tan * (180 / # num_of_sides))
    tan_arg = Math::PI / @num_of_sides
    apothem = @sides_length[0] / (2 * Math::tan(tan_arg))
    (0.5 * @num_of_sides * @sides_length[0] * apothem).round(3)
  end
end
