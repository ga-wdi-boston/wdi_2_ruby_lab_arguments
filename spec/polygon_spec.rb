require 'spec_helper'
require_relative '../lib/polygon'

describe Polygon do
  describe '#initialize' do
    it 'assigns side lengths' do
      rectangle = Polygon.new(2, 2, 4, 4)
      septagon = Polygon.new(1, 2, 3, 4, 5, 6, 7)

      expect(rectangle.side_lengths).to match_array [2, 2, 4, 4]
      expect(septagon.side_lengths).to match_array [1, 2, 3, 4, 5, 6, 7]
    end
  end
end
