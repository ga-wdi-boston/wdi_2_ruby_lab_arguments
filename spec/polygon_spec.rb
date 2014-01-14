require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  before do
    @rectangle = Polygon.new(2, 2, 4, 4)
    @septagon = Polygon.new(1, 2, 3, 4, 5, 6, 7)
    @triangle = Polygon.new(3, 4, 5)
  end

  describe '#initialize' do
    it 'assigns side lengths' do
      expect(@rectangle.side_lengths).to match_array [2, 2, 4, 4]
      expect(@septagon.side_lengths).to match_array [1, 2, 3, 4, 5, 6, 7]
      expect(@triangle.side_lengths).to match_array [3, 4, 5]
    end
  end

  describe '#number_of_corners' do
    it 'returns the number of corners in the polygon' do
      expect(@rectangle.number_of_corners).to eq 4
      expect(@septagon.number_of_corners).to eq 7
      expect(@triangle.number_of_corners).to eq 3
    end
  end
end
