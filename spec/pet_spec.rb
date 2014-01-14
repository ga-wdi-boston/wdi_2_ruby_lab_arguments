require 'spec_helper'
require_relative '../lib/pet'

describe Pet do

	describe '#initialize' do

		it 'assigns the attributes name, species, number of claws, number of teeth, and number of backpacks' do

			valid_animal = Pet.new("spot", "dog", 8, 32, 1)

			expect(valid_animal.name).to eq "spot"
			expect(valid_animal.species).to eq "dog"
			expect(valid_animal.number_of_claws).to eq 8
			expect(valid_animal.number_of_teeth).to eq 32
			expect(valid_animal.number_of_backpacks).to eq 1
		end


		it 'defaults the species to be random value from a splat, or allows it to be overridden by an argument' do

			valid_animal_1 = Pet.new("spot", "dog")
			valid_animal_2 = Pet.new("spot")

			expect(valid_animal_1.species).to eq "dog"
			expect(valid_animal_1.species.class).to eq String
			expect(valid_animal_1.species.class).to eq String

		end

	end

end
