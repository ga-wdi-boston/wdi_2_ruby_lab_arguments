require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#initialize' do
    polygon = Polygon.new(2,2,2)
    it 'returns num of sides of 3' do
      expect(polygon.num_of_sides).to eq 3
    end
  end

  # describe '#sum_of_interior_angles' do
  #   it '' do
  #     expect()
  #   end
  # end

  describe '#number_of_corners' do
    polygon = Polygon.new(2,2,2)
    it 'returns 3 when 3 sides are passed in' do
      expect(polygon.number_of_corners)
    end
  end

  # describe '#degrees_of_freedom' do
  #   it '' do
  #     expect()
  #   end
  # end

  # describe '#area' do
  #   it '' do
  #     expect()
  #   end
  # end

end
