require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
	describe '#initialize' do
		it 'randomizes species if one is not provided' do
			pet1 = Pet.new("Fluffy", "", "", "", "")

			expect(pet1.name).to eq "Fluffy"
 			expect(["cat", "dog", "bunny wearing backpack"]).to include pet1.species
 		end

 		it 'includes species if one is specified' do
 			pet2 = Pet.new("Spot", "cat", "", "", "")

 			expect(pet2.name).to eq "Spot"
 			expect(["cat", "dog", "bunny wearing backpack"]).to include pet2.species
 		end

 		it 'includes claws if specified' do
 			pet3 = Pet.new("Olive", "bunny wearing backpack", 4, "", "")

 			expect(pet3.claws).to eq 4
 		end

 		it 'include teeth if specified' do
 			pet4 = Pet.new("Jasmine", "dog", "", 6, "")

 			expect(pet4.teeth).to eq 6
 		end

 		it 'include backpacks if specified' do
 			pet5 = Pet.new("Howard", "bunny wearing backpack", "", "", 8)

 			expect(pet5.backpacks).to eq 8
 		end

 		it 'includes all options if all are specified' do
 			pet6 = Pet.new("Gordito", "cat", 4, 3, 2)

 			expect(pet6.name).to eq "Gordito"
 			expect(["cat", "dog", "bunny wearing backpack"]).to include pet6.species
 			expect(pet6.claws).to eq 4
 			expect(pet6.teeth).to eq 3
 			expect(pet6.backpacks).to eq 2
 		end
 	end
end
