class Polygon
  attr_accessor :sides
  def initialize(*sides)
    if sides.length < 3
      raise PolygonError
    end
    @sides = *sides
  end

  def sum_interior
    (@sides.length - 2) * 180
  end

  def num_corners
    @sides.length
  end

  def deg_of_freedom
    @sides.length * 2
  end

  def name
    polygons = [nil, nil, "triangle", "square", "pentagon",
                "hexagon", "heptagon", "octagon", "nonagon", "decagon", "hendecagon",
                "dodecagon", "tridecagon", "tetradecagon",
                "pentadecagon"]
    polygons[@sides.length - 1]
  end

  def area
    points = {}
    @sides.length.times do |num|
      points[("side#{num + 1}".to_sym)] = [] # Fill hash with "sideX" descriptors
    end

    puts points

    radial_angles = []

  end


  def find_pos(length, angle)
    pos = [length*Math.cos(angle), length*Math.sin(angle)]
  end

  def find_dist(p1, p2)
    dist = Math.sqrt((p2[0] - p1[0]) ** 2 + (p2[1] - p1[1]) ** 2)
  end
end

class PolygonError < StandardError
end

pentagon = Polygon.new(5,5,5,5,5)
pentagon.area
