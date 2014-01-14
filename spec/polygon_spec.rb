require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
		it '#sum_of_interior_angles' do
 			polygon1 = Polygon.new(4, 4)

 			expect(polygon1.sum_of_interior_angles).to eq 360
 		end

 		it '#number_of_corners' do
 			polygon2 = Polygon.new(6, 6)

 			expect(polygon2.number_of_corners).to eq 6
 		end

 		it '#degrees_of_freedom' do
 			polygon3 = Polygon.new(12, 12)

 			expect(polygon3.degrees_of_freedom).to eq 20
 		end
end
