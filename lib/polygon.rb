class Polygon
	attr_accessor :sides, :lengths_of_sides

	def initialize(sides, lengths_of_sides)
		@sides = sides
		@lengths_of_sides = lengths_of_sides
	end

	def sum_of_interior_angles
		(@sides - 2)*180
	end

	def number_of_corners
		@sides
	end

	def degrees_of_freedom
		(2 * @sides) - 4
	end
end
