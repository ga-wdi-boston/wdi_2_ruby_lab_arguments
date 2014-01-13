require 'spec_helper'
require_relative "../lib/polygon"

# You should have methods to return:

# sum_of_interior_angles
# number_of_corners
# degrees_of_freedom
# area


describe Polygon do
	before(:each) do
		@test_polygon_1 = Polygon.new(2,2,2,2)
		@test_polygon_2 = Polygon.new(3,3,3)
	end

	describe '#initialize' do
		it 'initialize a new Polygon instance' do
			expect(@test_polygon_1).to eq @test_polygon_1
			expect(@test_polygon_2).to eq @test_polygon_2
		end

		it 'initialize a new polygon instance, check number_of_sides' do
			expect(@test_polygon_1.number_of_sides).to eq 4
			expect(@test_polygon_2.number_of_sides).to eq 3
		end

		it 'initialize a new polygon instance, check length of sides' do
			expect(@test_polygon_1.sides_length).to eq [2,2,2,2]
			expect(@test_polygon_2.sides_length).to eq [3,3,3]
		end
	end

	describe '#number_of_corners' do
		it 'checks number of corners' do
			expect(@test_polygon_1.number_of_corners).to eq 4
			expect(@test_polygon_2.number_of_corners).to eq 3
		end
	end

	describe '#sum_of_interior_angles' do
		it 'checks what is the sum of the interior angles' do
			expect(@test_polygon_1.sum_of_interior_angles).to eq 360
			expect(@test_polygon_2.sum_of_interior_angles).to eq 180
		end
	end
end
