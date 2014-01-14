require 'pry'

class Polygon
	attr_accessor :length_of_sides

	def initialize(*length_of_sides)
		@length_of_sides = length_of_sides
	end

	def sum_of_interior_angles
		(@length_of_sides.length - 2) * 180
	end

	def num_of_corners
		@length_of_sides.length
	end

	def degree_of_the_freedom
		sum = 0
		array = @length_of_sides
		array.each do |i| 
			sum = sum + i 
		end
		return sum * 2
	end

	def area
	end

end


