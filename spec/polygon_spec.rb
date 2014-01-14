require 'spec_helper'
require_relative '../lib/polygon'


describe Polygon do

	describe '#initialize' do
		before(:each) do
			@side1 = 2
			@side2 = 3
			@side3 = 4
		end

		it 'will return the number of sides when passed in' do
			new_poly = Polygon.new(sides: [@side1, @side2, @side3])
			expect(new_poly.num_sides).to eq 3
		end
	end


	describe '#int_angles' do
		before(:each) do
			@side1 = 2
			@side2 = 3
			@side3 = 4
		end

		it 'will return the sum of interior angles' do
			new_poly = Polygon.new(sides: [@side1, @side2, @side3])
			expect(new_poly.int_angles).to eq 180

		end
	end

	describe '#num_corners' do
		before(:each) do
			@side1 = 2
			@side2 = 3
			@side3 = 4
		end

		it 'will return the number of corners' do
			new_poly = Polygon.new(sides: [@side1, @side2, @side3])
			expect(new_poly.num_corners).to eq 3

		end
	end

	describe '#deg_freedom' do
		before(:each) do
			@side1 = 2
			@side2 = 3
			@side3 = 4
		end

		it 'will return the degrees of freedom' do
			new_poly = Polygon.new(sides: [@side1, @side2, @side3])
			expect(new_poly.deg_freedom).to eq 6

		end
	end

	describe '#name_poly' do
		before(:each) do
			@side1 = 2
			@side2 = 3
			@side3 = 4
		end

		it 'will return the correct name based on the number of sides' do
			new_poly = Polygon.new(sides: [@side1, @side2, @side3])

			expect(new_poly.name_poly).to eq "triangle"

		end

	end

end
