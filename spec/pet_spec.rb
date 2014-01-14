require 'spec_helper'
require_relative '../lib/pet'

describe Pet do

  describe '#initialize' do
    it 'creates a pet with a name' do
      new_pet = Pet.new('Spot')
      expect(new_pet.name).to eq 'Spot'
    end

    it 'creates a pet with a randomly assigned species of cat, dog, or bunny wearing backpack' do
      species_options = ['cat', 'dog', 'bunny wearing backpack']
      new_pet = Pet.new('Spot')
      expect(species_options).to include new_pet.species
    end

    it 'creates a pet with a name and species that overrides random assignment when the argument is passed' do
      new_pet = Pet.new('Spot', 'cat')
      expect(new_pet.name). to eq 'Spot'
      expect(new_pet.species).to eq 'cat'
    end

    it 'assigns the pet number of claws, number of teeth, and number of backpacks if they are passed' do
      new_pet = Pet.new('Spot', 'cat', num_claws: 2, num_teeth: 10, num_backpacks: 1)
      expect(new_pet.num_claws). to eq 2
      expect(new_pet.num_teeth). to eq 10
      expect(new_pet.num_backpacks). to eq 1
    end
  end
end

