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

	describe '#polygon_name' do
		it 'should call a triangle by the correct type of triangle' do
			shape1 = Polygon.new(3,3,3)
			shape2 = Polygon.new(3,4,5)
			shape3 = Polygon.new(3,3,5)
			expect(shape1.polygon_name).to eq "Equilateral Triangle"
			expect(shape2.polygon_name).to eq "Scalene Triangle"
			expect(shape3.polygon_name).to eq "Isosceles Triangle"
		end
		it 'should call a square a square' do
			shape = Polygon.new(3,3,3,3)
			expect(shape.polygon_name).to eq "Square"
		end
		it 'should call a rectangle a rectangle' do
			shape = Polygon.new(3,4,3,4)
			expect(shape.polygon_name).to eq "Rectangle"
		end
	end

end
