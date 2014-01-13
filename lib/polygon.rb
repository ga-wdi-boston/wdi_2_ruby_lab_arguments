class Polygon
  attr_accessor :num_of_sides, :sides_length

  def initialize(*sides_length)
    @num_of_sides = sides_length.length
    @sides_length = sides_length
  end

  def number_of_corners
    @num_of_sides
  end

end
