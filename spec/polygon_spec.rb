require 'spec_helper'
require_relative '../lib/polygon'


describe Polygon do

	describe '#initialize' do

		it 'will return the number of sides when passed in' do
			new_poly = Polygon.new(4)
			expect(new_poly.sides).to eq 4
		end
	end


	describe '#int_angles' do

		it 'will return the sum of interior angles' do
			new_poly = Polygon.new(6)
			expect(new_poly.int_angles).to eq 720

		end
	end

	describe '#num_corners' do

		it 'will return the number of corners' do
			new_poly = Polygon.new(6)
			expect(new_poly.num_corners).to eq 6

		end
	end

	describe '#deg_freedom' do

		it 'will return the number of corners' do
			new_poly = Polygon.new(6)
			expect(new_poly.deg_freedom).to eq 12

		end
	end

	describe '#name_poly' do

		it 'will return the correct name based on the number of sides' do
			new_poly = Polygon.new(5)
			new_poly2 = Polygon.new(6)

			expect(new_poly.name_poly).to eq "pentagon"
			expect(new_poly2.name_poly).to eq "hexagon"

		end

	end

end
