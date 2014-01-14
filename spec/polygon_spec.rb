require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do

	describe '#initialize' do
		it 'assigns the number of sides' do
			polygon_1 = Polygon.new(9)
			expect(polygon_1.number_of_sides).to eq 9
		end
	end

	describe '#sum_of_interior_angles' do
		it 'sums the interior angles' do
			polygon_1 = Polygon.new(9)
			expect(polygon_1.sum_of_interior_angles).to eq 7*180
		end
	end

	describe '#number_of_corners' do
		it 'calculates the number of corners' do
			polygon_1 = Polygon.new(9)
			expect(polygon_1.number_of_corners).to eq 9
		end
	end

	describe '#degrees_of_freedom' do
		it 'calculates the degrees of freedom' do
			polygon_1 = Polygon.new(9)
			expect(polygon_1.degrees_of_freedom).to eq 18
		end
	end


end
