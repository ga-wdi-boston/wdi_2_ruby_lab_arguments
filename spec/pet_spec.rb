require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
  describe '#initialize' do
    it 'assigns the pet a name' do
      pet = Pet.new('Sparky')

      expect(pet.name).to eq 'Sparky'
    end

    it 'assigns the pet a random default species' do
      pet = Pet.new('Sparky')

      expect(['cat', 'dog', 'bunny wearing backpack']).to include pet.species
    end

    it 'allows the random species to be overridden with an argument' do
      pet = Pet.new('Sparky', 'hamster')

      expect(pet.species).to eq 'hamster'
    end
  end
end
