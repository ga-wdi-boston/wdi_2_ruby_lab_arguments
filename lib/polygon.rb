class Polygon

	attr_accessor :number_of_sides

	def initialize(number_of_sides)
		@number_of_sides = number_of_sides
	end

	def sum_of_interior_angles
		(@number_of_sides - 2) * 180 # answer in degrees
	end

	def number_of_corners
		@number_of_sides
	end

	def degrees_of_freedom
		2 * @number_of_sides
	end

end
