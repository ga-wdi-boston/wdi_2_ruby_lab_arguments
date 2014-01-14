require 'spec_helper'
require_relative '../lib/pet'
describe Pet do
	describe '#initialize' do
		it 'assign attribute to pets' do
			pet = Pet.new('Tom', 'cat', {:no_of_claws => '16'})
			expect(pet.name).to eq 'Tom'
			expect(["cat", "dog", "bunny wearing backpack"]).to include pet.species[0]
			expect(pet.no_of_claws).to eq '16'
		end
	end
end
