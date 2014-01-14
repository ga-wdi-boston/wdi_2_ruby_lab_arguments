
require 'spec_helper'
require_relative '../polygon.rb'

describe Polygon do
	before(:each) do
		@triangle = Polygon.new(3, 3, 3)
		@square = Polygon.new(4, 4, 4, 4)
		@pentagon = Polygon.new(5, 5, 5, 5, 5)
	end
	describe "#initialize" do
		it "creates a new polygon and puts the lengths into an array" do
			expect(@triangle.sides).to eq [3, 3, 3]
		end
	end
	describe "#sum_interior_angles" do
		it "returns sum of interior angles on triangle" do
			expect(@triangle.sum_interior_angles).to eq 180
		end
		it "returns sum of interior angles on square" do
			expect(@square.sum_interior_angles).to eq 360
		end
	end
	describe "#number_corners" do
		it "returns the number of corners in triangle" do
			expect(@triangle.number_corners).to eq 3
		end
		it "returns the number of corners in square" do
			expect(@square.number_corners).to eq 4
		end
		it "returns the number of corners in pentagon" do
			expect(@pentagon.number_corners).to eq 5
		end
	end

	describe "#degrees_of_freedom" do
		it "returns the degrees of freedom in pentagon" do
			expect(@pentagon.degrees_of_freedom).to eq 10
		end
	end

	describe "#name_of_polygon" do
		it "knows the name of a ten sided polygon" do
			new_poly = Polygon.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
			expect(new_poly.name_of_polygon).to eq "decagon"
		end
		it "knows the name of a 24 sided polygon" do
			new_poly = Polygon.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24)
			expect(new_poly.name_of_polygon).to eq "24-gon"
		end
	end
end

