require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do

  # Make sure that the @num_of_sides is set when initialized
  describe '#initialize' do
    polygon = Polygon.new(2,2,2)
    it 'returns num of sides of 3' do
      expect(polygon.num_of_sides).to eq 3
    end
  end

  describe '#sum_of_interior_angles' do
    it 'returns 180 with 3 sides' do
      polygon = Polygon.new(2,2,2)
      expect(polygon.sum_of_interior_angles).to eq 180
    end

    it 'returns 90 with 4 sides' do
      polygon = Polygon.new(2,2,2,2)
      expect(polygon.sum_of_interior_angles).to eq 360
    end
  end

  describe '#number_of_corners' do
    polygon = Polygon.new(2,2,2)
    it 'returns 3 when 3 sides are passed in' do
      expect(polygon.number_of_corners)
    end
  end

  describe '#degrees_of_freedom' do
    it 'return 6 for triangle' do
      polygon = Polygon.new(2,2,2)
      expect(polygon.degrees_of_freedom).to eq 6
    end

    it 'return 8 for triangle' do
      polygon = Polygon.new(2,2,2,2)
      expect(polygon.degrees_of_freedom).to eq 8
    end
  end

  describe '#area' do
    it 'returns 1.73205 for a triangle 2,2,2' do
      polygon = Polygon.new(2,2,2)
      expect(polygon.area).to eq 1.73205
    end

    it 'returns 4 for a square 2,2' do
      polygon = Polygon.new(2,2)
      expect(polygon.area).to eq 4
    end
  end

end
