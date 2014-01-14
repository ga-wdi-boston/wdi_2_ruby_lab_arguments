require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
	describe '#polygon' do
		polygon = Polygon.new(2, 3, 4, 4)

		it 'count the sum of the interior of the angles' do
			expect(polygon.sum_of_interior_angles).to eq 360
		end

		it 'count the number of the corners ot the angles' do
			expect(polygon.num_of_corners).to eq 4
		end

		it 'degree of the freedom' do
			expect(polygon.degree_of_the_freedom).to eq 26
		end

		# it 'area of the polygon' do
		# 	expect(polygon.area).to eq 213124
		# end
	end
end