
class Polygon
	attr_accessor :length_of_sides
	def initialize(*length_of_sides)
		@length_of_sides = length_of_sides
	end
	def sum_of_interior_angles
		(@length_of_sides.length - 2) * 180
	end
	def number_of_corners
		@length_of_sides.length
	end
	def degrees_of_freedom
		@length_of_sides.length * 2
	end
	def area
		sum = 0
		num_of_sides = @length_of_sides.length
		@length_of_sides.each do |num|
			sum = sum + num
		end
		sum = sum/2
		mul = 1
		@length_of_sides.each do |num|
			mul = (sum - num) * mul
		end
		if mul/(sum**(num_of_sides - 4)) > 0 
			return Math.sqrt(mul/(sum**(num_of_sides - 4)))
		else puts "Error! Sides input cannot make a #{self.name}."
		end
	end

	def name
		num_of_sides = @length_of_sides.length
		case num_of_sides
		when 3
			return 'Triangle'
		when 4
 			return 'Quadrilateral'
		when 5
			return 'Pentagon'
		when 6
			return 'Hexagon'
		else
      return "#{num_of_sides}-gon"
		end
	end

	def centroid
	end
end
