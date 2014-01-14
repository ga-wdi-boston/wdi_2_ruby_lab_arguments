require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  before do
    # This block will be run before each `it` block within this `describe` block.
    # If you set up objects in here, you must store them in instance variables.
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

  describe '#degrees_of_freedom' do
    it 'returns the number of degrees of freedom in the polygon' do
      expect(@rectangle.degrees_of_freedom).to eq 8
      expect(@septagon.degrees_of_freedom).to eq 14
      expect(@triangle.degrees_of_freedom).to eq 6
    end
  end

  describe '#sum_of_interior_angles' do
    it 'returns the sum of the interior angles in the polygon' do
      expect(@rectangle.sum_of_interior_angles).to eq 360
      expect(@septagon.sum_of_interior_angles).to eq 900
      expect(@triangle.sum_of_interior_angles).to eq 180
    end
  end

  describe '#name' do
    it 'returns a possible name for the polygon' do
      expect(@rectangle.name).to eq 'rectangle'
      expect(@septagon.name).to eq 'septagon'
      expect(@triangle.name).to eq 'triangle'
    end
  end
end
