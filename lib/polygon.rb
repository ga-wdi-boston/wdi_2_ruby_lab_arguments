

class Polygon

	attr_accessor :sides

	def initialize(sides)
		@sides = sides
	end

	def int_angles
		180*(@sides-2)
	end

	def num_corners
		@sides
	end

	def deg_freedom
		@sides*2
	end


end
