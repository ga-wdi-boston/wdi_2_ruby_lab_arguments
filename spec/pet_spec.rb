require 'spec_helper'
require_relative "../lib/pet.rb"

	describe Pet do
		describe 'initialize' do
						it 'assigns the pet attributes' do
							new_pet = Pet.new('Fido', 'Dog')
							expect(new_pet.pet_name).to eq 'Fido'
							expect(new_pet.pet_species).to eq 'Dog'
						end
    		end
		end

		describe Pet do
			describe '#species_assignment' do
				it 'assigns a species of Dog, Cat, Bunny wearing backpack, or random to a new pet' do
					new_pet2 = Pet.new("Fido","Bunny wearing backpack", number_of_claws: "6")
					expect(["Dog", "Cat", "Bunny wearing backpack"]).to include (new_pet2.pet_species)
				end
			end
		end

	describe Pet do
			describe '#add claws, optional' do
				it 'gives pet claws' do
					new_pet2 = Pet.new("Fido","Bunny wearing backpack", number_of_claws: "4")
					expect(new_pet2.number_of_claws).to eq '4'
				end
			end
		end

describe Pet do
	describe '#adds teeth, optional' do
		it 'gives pet teeth, optional' do
			new_pet3 = Pet.new("Ginger", "Cat", number_of_claws: "9", number_of_teeth: "1")
			expect(new_pet3.number_of_teeth).to eq '1'
		end
	end
end

