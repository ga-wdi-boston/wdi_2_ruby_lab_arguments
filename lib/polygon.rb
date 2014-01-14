require 'pry'

class Polygon

	attr_accessor :sides, :num_sides

	def initialize(options)
		@sides = options[:sides]
		@num_sides = @sides.count
	end

	def int_angles
		180*(@num_sides-2)
	end

	def num_corners
		@num_sides
	end

	def deg_freedom
		@num_sides * 2
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
		names.fetch(@num_sides)
	end

end
