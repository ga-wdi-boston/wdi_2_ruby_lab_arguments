require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#initialize' do
    polygon = Polygon.new
    it 'returns num_of_sides=3 as default' do
      expect(polygon.num_of_sides).to eq 3
    end
  end

  describe '#sum_of_interior_angles' do
    it '' do
      expect()
    end
  end

  describe '#number_of_corners' do
    it '' do
      expect()
    end
  end

  describe '#degrees_of_freedom' do
    it '' do
      expect()
    end
  end

  describe '#area' do
    it '' do
      expect()
    end
  end

end
