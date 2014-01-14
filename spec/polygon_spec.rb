require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#sum_of_interior_angles' do
    it 'calculates the sum of interior angles' do
      new_pentagon = Polygon.new(5, 5)
      expect(new_pentagon.sides).to eq 5
      expect(new_pentagon.sum_of_interior_angles).to eq 540
    end

    it 'calculates the sum of interior angles' do
      new_pentagon = Polygon.new(6, 6)
      expect(new_pentagon.sides).to eq 6
      expect(new_pentagon.sum_of_interior_angles).to eq 720
    end
  end

  describe '#number_of_corners' do
    it 'states the number of corners a polygon with has' do
      new_hexagon = Polygon.new(6, 6)
      expect(new_hexagon.sides).to eq 6
      expect(new_hexagon.number_of_corners).to eq 6
    end

    it 'states the number of corners a polygon with has' do
      new_hexagon = Polygon.new(7, 7)
      expect(new_hexagon.sides).to eq 7
      expect(new_hexagon.number_of_corners).to eq 7
    end
  end

  describe '#degree_of_freedom' do
    it 'calculates the degrees of freedom a polygon has' do
      new_octagon = Polygon.new(8, 7)
      expect(new_octagon.sides).to eq 8
      expect(new_octagon.degree_of_freedom).to eq 16
    end

    it 'calculates the degrees of freedom a polygon has' do
      new_octagon = Polygon.new(4, 8)
      expect(new_octagon.sides).to eq 4
      expect(new_octagon.degree_of_freedom).to eq 8
    end
  end
end
