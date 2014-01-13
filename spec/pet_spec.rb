require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
	describe '#initialize' do
		it 'should require a name' do
			valid_pet = Pet.new("Chester")
			expect(valid_pet.name).to eq 'Chester'
			expect{Pet.new}.to raise_error
		end
		it 'should randomly assign a species' do
			valid_pet = Pet.new("Chester")
			expect(['cat', 'dog', 'bunny wearing backpack']).to include valid_pet.species
		end
		it 'can have a number of teeth, claws, and backpacks' do
			valid_pet = Pet.new("Chester", num_teeth: 2)
			expect(valid_pet.num_teeth).to eq 2
		end
		it 'can have a number of teeth, claws, and backpacks' do
			valid_pet = Pet.new("Chester", num_teeth: 2, num_backpacks: 0)
			expect(valid_pet.num_teeth).to eq 2
			expect(valid_pet.num_claws = 3).to eq 3
			expect(valid_pet.num_backpacks).to eq 0
		end
	end
end
