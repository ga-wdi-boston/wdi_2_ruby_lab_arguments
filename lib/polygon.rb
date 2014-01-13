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

	def polygon_name
		case @num_sides
		when 3
			if (@side_length_array[0] == @side_length_array[1] && @side_length_array[0] == @side_length_array[2])
				"Equilateral Triangle"
			elsif (@side_length_array[0] != @side_length_array[1] && @side_length_array[0] != @side_length_array[2] && @side_length_array[1] != @side_length_array[2])
				"Scalene Triangle"
			elsif (@side_length_array[0] == @side_length_array[1] || @side_length_array[0] == @side_length_array[2] || @side_length_array[1] == @side_length_array[2])
				"Isosceles Triangle"
			end
		when 4
			if (@side_length_array[0] == @side_length_array[1])
				"Square"
			else
				"Rectangle"
			end
		when 5
			"Pentagon"
		when 6
			"Hexagon"
		when 7
			"Heptagon"
		when 8
			"Octagon"
		when 9
			"Nonagon (to some)"
		when 10
			"Decagon"
		end
	end
end
