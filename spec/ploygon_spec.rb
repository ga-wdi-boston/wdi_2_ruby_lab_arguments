require 'spec_helper'
require_relative '../lib/polygon.rb'

describe Polygon do

	before(:each) do
		@triangle = Polygon.new(4, 4, 4)
		@square = Polygon.new(4, 4, 4, 4)
		@pentagon = Polygon.new(4, 4, 4, 4, 4)
	end

	describe '#initialize' do
		it 'creates a new instance when passed a minimum of 3 sides' do
			expect(@triangle.number_of_sides).to eq 3
		end
	end

	describe '#number_of_corners' do
		it 'assigns number of corners based on sides paramater' do
			expect(@triangle.number_of_corners).to eq 3
		end
	end

	describe '#sum_interior_angles' do
		it 'returns 180 for a triangle' do
			expect(@triangle.sum_interior_angles).to eq 180
		end

		it 'returns 360 for a square' do
			expect(@square.sum_interior_angles).to eq 360
		end

		it 'returns 540 for a pentagon' do
			expect(@pentagon.sum_interior_angles).to eq 540
		end
	end

	describe '#degrees_of_freedom' do
		it 'returns 8 for a square' do
			expect(@square.degrees_of_freedom).to eq 8
		end
	end

	describe '#name' do
		it 'returns triangle for a 3 sided polygon' do
			expect(@triangle.name).to eq 'triangle'
		end

		it 'returns rectangle for a 4 sided polygon' do
			expect(@square.name).to eq 'rectangle'
		end

		it 'returns pentagon for a 5 sided polygon' do
			expect(@pentagon.name).to eq 'pentagon'
		end
	end

end