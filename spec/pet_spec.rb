require 'spec_helper'
require_relative '../lib/pet.rb'

describe Pet do
  describe '#initialize' do
    pet = Pet.new('Bob')

    it 'returns the name of the pet' do
      expect(pet.name).to eq 'Bob'
    end

    it 'is assigned a random species as default' do
      expect(pet.species).to_not eq ''
    end

    it 'options default to 0' do
      expect(pet.claws).to eq 0
    end
  end

end
