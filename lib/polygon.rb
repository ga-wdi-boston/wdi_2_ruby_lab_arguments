class Polygon
  attr_reader :side_lengths

  def initialize(*side_lengths)
    @side_lengths = side_lengths
  end

  def number_of_corners
    @side_lengths.length
  end

  def degrees_of_freedom
    2 * number_of_corners
  end

  def sum_of_interior_angles
    (number_of_corners - 2) * 180
  end
end
