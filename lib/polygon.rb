class Polygon
  attr_reader :side_lengths

  def initialize(*side_lengths)
    @side_lengths = side_lengths
  end
end
