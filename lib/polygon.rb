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
end
