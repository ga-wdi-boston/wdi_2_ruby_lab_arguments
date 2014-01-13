require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
	describe '#initialize' do
		it 'should have more than 2 sides' do
			shape = Polygon.new(2,3,4)
			expect(shape.num_sides).to eq 3
		end
		it 'should return the number of corners in the polygon' do
			shape = Polygon.new(2,3,4)
			expect(shape.num_corners).to eq 3
		end
		it 'should return the degrees of freedom in the polygon' do
			shape = Polygon.new(2,3,4)
			expect(shape.degrees_of_freedom).to eq 6
		end
	end

	describe 'sum_of_interior_angles' do
		it 'should return the sum of the polygons interior angles' do
			shape = Polygon.new(2,3,4)
			expect(shape.sum_of_interior_angles).to eq 180
		end
	end

	describe 'number_of_corners' do

	end

end
