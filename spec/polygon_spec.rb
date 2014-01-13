require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#initialize' do
    polygon = Polygon.new
    it 'returns num_of_sides=3 as default' do
      expect(polygon.num_of_sides).to eq 3
    end
  end
end
