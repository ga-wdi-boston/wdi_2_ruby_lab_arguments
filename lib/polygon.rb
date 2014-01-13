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
                "hexagon", "octagon", "nonagon", "decagon", nil,
                "dodecagon"]
    polygons[@sides.length - 1]
  end
end

class PolygonError < StandardError
end
