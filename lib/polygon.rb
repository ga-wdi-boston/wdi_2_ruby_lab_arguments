# You should be able to create a new Polygon. The Polygon can have any number of sides (more than 2). These are all simple or non-intersecting polygons. The arguments to the polygon are the lengths of its sides.

# You should have methods to return:

# sum_of_interior_angles
# number_of_corners
# degrees_of_freedom
# area


class Polygon
		attr_accessor :number_of_sides, :sides_length

		def initialize(*sides_length)
			@number_of_sides = sides_length.length
			@sides_length = sides_length
		end

		def number_of_corners
			number_of_corners = @number_of_sides
		end

# n = number of sides and to get sum_of_interior_angles use :: 180(n - 2)
		def sum_of_interior_angles
			(@number_of_sides - 2) * 180
		end
end
