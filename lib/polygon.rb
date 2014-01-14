class Polygon

	attr_accessor :sides, :number_of_sides, :corners

	# Creates new instance with a minimum of 3 parameters
	def initialize(side1, side2, side3, *sides)
		@sides = [side1, side2, side3, *sides].flatten
		@number_of_sides = @sides.count
	end

	def number_of_corners
		@number_of_sides
	end

	def sum_interior_angles
		180 + (180 * (@number_of_sides - 3))
	end

	def degrees_of_freedom
		@number_of_sides * 2
	end

	# Extracts polygon name from array at index equal to number of sides. (Thanks, Prescott for the idea!)
	def name
		names = ['', '', '', 'triangle', 'rectangle', 'pentagon', 'hexagon', 'heptagon', 'octagon', 'nonagon', 'decagon']
		if @number_of_sides <= 10
		 names[@number_of_sides]
		end
	end

end