require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#sum_of_interior_angles' do
    it 'calculates the sum of interior angles' do
      new_pentagon = Polygon.new(5, 5)
      expect(new_pentagon.sides).to eq 5
      expect(new_pentagon.sum_of_interior_angles).to eq 540
    end
  end
end
