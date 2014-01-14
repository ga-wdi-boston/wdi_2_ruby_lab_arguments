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

    it 'assigns a number of claws' do
      pet = Pet.new('Bunbun', 'rabbit', claws: 4)

      expect(pet.claws).to eq 4
    end

    it 'assigns a number of teeth' do
      pet = Pet.new('Bunbun', 'rabbit', teeth: 12)

      expect(pet.teeth).to eq 12
    end

    it 'assigns a number of backpacks' do
      pet = Pet.new('Bunbun', 'rabbit', backpacks: 2)

      expect(pet.backpacks).to eq 2
    end
  end
end
