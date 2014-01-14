

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

	def name_poly
		names = {
			3 => 'triangle',
			4 => 'square',
			5 => 'pentagon',
			6 => 'hexagon',
			7 => 'septagon',
			8 => 'octagon',
			9 => 'nonagon',
			10 => 'decagon',
			11 => 'hendecagon',
			12 => 'dodecagon',
			13 => 'triskaidecagon',
			14 => 'tetrakaidecagon',
			15 => 'pentadecagon'
		}
		names.fetch(@sides)
	end

end
