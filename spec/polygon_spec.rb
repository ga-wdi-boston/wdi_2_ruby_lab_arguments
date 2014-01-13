require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
	describe '#initialize' do
		it 'should have more than 2 sides' do
			shape = Polygon.new(2,3,4)
			expect(shape.num_sides).to eq 3
		end
	end

	describe 'sum_of_interior_angles' do
		it 'should return the sum of the polygons interior angles' do
			shape = Polygon.new(2,3,4)
			expect(shape.sum_of_interior_angles).to eq 180
		end
	end
end
