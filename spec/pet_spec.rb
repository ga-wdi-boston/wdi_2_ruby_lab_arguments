require 'spec_helper'
require_relative '../lib/pet'


describe Pet do
	before(:each) do
		@pet = Pet.new('Spot')
		@pet_species = Pet.new('Spot', species: 'rabbit')
		@pet_complete = Pet.new('Jade', claws: 16, teeth: 4, backpacks: 1)
	end

	describe '#initialize' do
		it 'takes necessary name parameter and assigns to attribute' do
			expect(@pet.name).to eq 'Spot'
		end

		it 'assigns a species if specified' do
			expect(@pet_species.species).to eq 'rabbit'
		end

		it 'automatically assigns a species as cat, dog or bunny if not specified' do
			expect(@pet.species.length).to be > 0
			expect(['cat', 'dog', 'bunny wearing backpack']).to include @pet.species
		end

		it 'will assign number of claws, teeth and backpacks to attributes if specified' do
			expect(@pet_complete.claws).to eq 16
			expect(@pet_complete.teeth).to eq 4
			expect(@pet_complete.backpacks).to eq 1
		end
	end

end