require 'spec_helper'
require_relative '../lib/polygon.rb'

describe Polygon do
  before(:each) do
    @square = Polygon.new(4, 4, 4, 4)
    @pentagon = Polygon.new(4, 4, 4, 4, 4)
  end

  describe '#initialize' do
    it 'creates a polygon when passed sides' do
      expect(@square.class).to eq Polygon
      expect(@square.sides).to eq [4,4,4,4]
    end

    it 'rejects polygons with fewer than 3 sides passed' do
      expect{ Polygon.new(2, 3) }.to raise_error(PolygonError)
    end
  end

  describe '#sum_interior' do
    it 'returns the sum of interior angles' do
      expect(@square.sum_interior).to eq 360
      expect(@pentagon.sum_interior).to eq 540
    end
  end

  describe '#num_corners' do
    it 'returns the number of corners' do
      expect(@square.num_corners).to eq 4
      expect(@pentagon.num_corners).to eq 5
    end
  end

  describe '#deg_of_freedom' do
    it 'returns the degrees of freedom' do
      expect(@square.deg_of_freedom).to eq 8
      expect(@pentagon.deg_of_freedom).to eq 10
    end
  end

  describe '#name' do
    it 'returns the name of a polygon' do
      expect(@square.name).to eq "square"
      expect(@pentagon.name).to eq "pentagon"
    end
  end

end
