require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#initialize' do
    it 'creates a polygon with at least 3 sides' do
      new_shape_1 = Polygon.new(4, 5, 6)
      new_shape_2 = Polygon.new(4, 4, 4, 4)
      expect(new_shape_1.number_of_sides).to eq 3
      expect(new_shape_2.number_of_sides).to eq 4
    end
  end

  describe '#number_of_corners' do
    it 'calculates the number of corners of a polygon' do
      new_shape_1 = Polygon.new(3, 3, 3, 3, 3)
      expect(new_shape_1.number_of_corners).to eq 5
    end
  end

  describe '#sum_of_interior_angles' do
    it 'calculates the sum of the interior angles of a polygon' do
      new_shape_1 = Polygon.new(4, 4, 4, 4)
      new_shape_2 = Polygon.new(3, 4, 5)
      new_shape_3 = Polygon.new(3, 3, 3, 3, 3, 3, 3, 3)
      expect(new_shape_1.sum_of_interior_angles).to eq 360
      expect(new_shape_2.sum_of_interior_angles).to eq 180
      expect(new_shape_3.sum_of_interior_angles).to eq 1080
    end
  end

  describe 'degrees_of_freedom' do
    it 'calculates the degrees of a freedom of a polygon' do
      new_shape_1 = Polygon.new(3, 3, 3, 3)
      new_shape_2 = Polygon.new(5, 5, 5, 5, 5)
      new_shape_3 = Polygon.new(7, 7, 7, 7, 7, 7)
      expect(new_shape_1.degrees_of_freedom).to eq 8
      expect(new_shape_2.degrees_of_freedom).to eq 10
      expect(new_shape_3.degrees_of_freedom).to eq 12
    end
  end
end
