require 'spec_helper'
require_relative '../lib/pet'


describe Pet do
  describe '#initialize' do
    it 'assigns the pet attributes' do
      my_pet = Pet.new(
        'Jax',
        species: "cat"
        )
      expect(my_pet.name).to eq 'Jax'
      expect(my_pet.species).to eq 'cat'
    end
  end

  describe 'initialize' do
    it 'assigns the pet attributes' do
      my_pet = Pet.new(
        'Dean',
        )
      expect(my_pet.name).to eq 'Dean'
    end
  end
end
