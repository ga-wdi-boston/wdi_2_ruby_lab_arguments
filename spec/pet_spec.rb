require 'spec_helper'
require_relative '../lib/pet'


describe Pet do

	describe '#initialize' do

		it 'will return false if pet does not have a name' do
			new_pet = Pet.new('')
			expect(new_pet.name_set?).to eq false
		end

		it 'will return true even if no species is passed in' do
			new_pet = Pet.new('spot')
			expect(new_pet.species_set?).to eq true
		end

		it 'will return the correct species name if we pass one in' do
			new_pet = Pet.new('spot', species: 'tiger')
			expect(new_pet.species).to eq 'tiger'
		end

		it 'will return the options if they are provided' do
			new_pet = Pet.new('spot', claws: 1, teeth: 4, backpacks: 4)
			expect(new_pet.number_of_claws).to eq 1
			expect(new_pet.number_of_teeth).to eq 4
			expect(new_pet.number_of_backpacks).to eq 4
		end

		it 'will not set any parameters besides name if they are not passed in' do
			new_pet = Pet.new('spot')
			expect(new_pet.number_of_claws).to eq nil
			expect(new_pet.number_of_teeth).to eq nil
			expect(new_pet.number_of_backpacks).to eq nil
		end


	end


end

