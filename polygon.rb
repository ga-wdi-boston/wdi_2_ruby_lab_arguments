
class Polygon

	attr_accessor :sides, :num_sides

	def initialize(*sides)
		@sides = *sides
		@num_sides = sides.count
	end

	def sum_interior_angles
		180 + (180 * (@num_sides - 3))
	end

	def number_corners
		@num_sides
	end

	def degrees_of_freedom
		2 * @num_sides
	end

	def name_of_polygon

		case @num_sides
		when 3
			"trigon"
		when 4
			"tetragon"
		when 5
			"pentagon"
		when 6
			"hexagon"
		when 7
			"heptagon"
		when 8
			"octagon"
		when 9
			"enneagon"
		when 10
			"decagon"
		when 11
			"hendecagon"
		when 12
			"dodecagon"
		when 13
			"tridecagon"
		when 14
			"tetradecagon"
		when 15
			"pendecagon"
		when 16
			"hexdecagon"
		when 17
			"heptadecagon"
		when 18
			"octadecagon"
		when 19
			"enneadecagon"
		when 20
			"icosagon"
		else
			"#{@num_sides}-gon"
		end
	end
end






















