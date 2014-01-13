class Polygon
	attr_accessor :num_sides, :side_length_array
	attr_reader :num_corners, :degrees_of_freedom
	def initialize(*side_length)
		@num_sides = side_length.length if side_length.length > 2
		@side_length_array = side_length
		@num_corners = @num_sides
		@degrees_of_freedom = @num_sides * 2
	end

	def sum_of_interior_angles
		# (n − 2)180 degrees
		(@num_sides - 2)*180
	end
end
