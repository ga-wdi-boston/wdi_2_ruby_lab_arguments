require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe '#initialize' do
    it 'assigns a name' do
      person = Person.new('Dave')

      expect(person.name).to eq 'Dave'
    end
  end
end
