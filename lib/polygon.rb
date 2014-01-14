class Polygon
  attr_accessor :num_of_sides, :sides

  def initialize(sideA, sideB, sideC, *sides)
    # Require 3 sides to initialize and splat the rest
    @sides = [sideA, sideB, sideC]
    sides.each { |side| @sides << side }
    @num_of_sides = @sides.length
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
    # apothem = @sides / (2 * tan * (180 / # num_of_sides))
    tan_arg = Math::PI / @num_of_sides
    apothem = @sides[0] / (2 * Math::tan(tan_arg))
    (0.5 * @num_of_sides * @sides[0] * apothem).round(3)
  end

  def name
    names = [
      'Triangle',
      'Quadrilateral',
      'Pentagon',
      'Hexagon',
      'Heptagon',
      'Octagon',
      'Nonagon',
      'Decagon']
    names[@num_of_sides-3]
  end
end

polygon = Polygon.new(2,2,2,2,2)

puts polygon.num_of_sides

p polygon.sides
