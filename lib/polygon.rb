class Polygon
  attr_reader :side_lengths

  def initialize(*side_lengths)
    @side_lengths = side_lengths
  end

  def number_of_corners
    @side_lengths.length
  end
end
