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

  def name
    # Not accurate in all cases. For instance, 4 should be "quadrilateral"
    names = {
      3 => 'triangle',
      4 => 'rectangle',
      5 => 'pentagon',
      6 => 'hexagon',
      7 => 'septagon',
      8 => 'octagon',
      9 => 'nonagon',
      10 => 'decagon'
    }

    names[number_of_corners]
  end
end
