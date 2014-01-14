require 'spec_helper'
require_relative '../lib/polygon'
describe Polygon do
	describe '#initialize' do
		it 'should assign attribue to the side of the polygon' do
			polygon = Polygon.new(3, 4, 5, 6, 4)
			expect(polygon.length_of_sides).to eq [3, 4, 5, 6, 4]
		end
	end
	describe '#sum_of_interior_angles' do
		it 'should return sum_of_interior_angles of the polygon' do
			polygon1 = Polygon.new(3, 4, 5)
			expect(polygon1.sum_of_interior_angles).to eq 180
			polygon2 = Polygon.new(4, 5, 6, 7)
			expect(polygon2.sum_of_interior_angles).to eq 360
		end
	end
	describe '#number_of_corners' do
		it 'should return number_of_corners' do
			polygon3 = Polygon.new(3, 4, 5)
			expect(polygon3.number_of_corners).to eq 3
			polygon4 = Polygon.new(4, 5, 6, 2, 4)
			expect(polygon4.number_of_corners).to eq 5
		end
	end
	describe '#drgree of freedom' do
		it 'should return degree of freedom' do
			polygon5 = Polygon.new(3, 5, 7, 4, 5, 6)
			expect(polygon5.degrees_of_freedom).to eq 12
		end
	end
	describe '#name' do
		it 'should return name of different polygon' do
			polygon6 = Polygon.new(3, 4, 6)
			expect(polygon6.name).to eq 'Triangle'
			polygon7 = Polygon.new(4, 6, 8, 2, 4, 5, 3, 9)
			expect(polygon7.name).to eq '8-gon'
		end
	end
	describe '#area' do
		it 'should return approximate value of the area of this polygon' do
			polygon8 = Polygon.new(3, 4, 5)
			expect(polygon8.area).to eq 6.0
			polygon9 = Polygon.new(4, 4, 4, 4)
			expect(polygon9.area).to eq 16.0
		end
	end
end
