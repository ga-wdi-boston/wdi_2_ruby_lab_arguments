require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
	# describe '#Pet' do
	# 	pet = Pet.new("duoduo", "pig", 4, 10, 2)
		
	# 	it "add the name of the pet" do 
	# 		expect(pet.name).to eq 'duoduo'
	# 	end

		# it "add the species of the pet" do
		# 	expect(pet.species).to eq 'pig'
		# end

	# 	it "add the num of claw of the pet" do
	# 		expect(pet.num_of_claw).to eq 4
	# 	end

	# 	it "add the num of teeth of the pet" do 
	# 		expect(pet.num_of_teeth).to eq 10
	# 	end

	# 	it "add the num of backpack of the pet" do
	# 		expect(pet.num_of_backpack).to eq 2
	# 	end

	# end

	describe '#pet2' do
		pet2 = Pet.new('jim', 4, 10, 2)

		it "add the name of the pet" do
			expect(pet2.species).to eq 'cat'
		end
	end

	# describe '#Species' do
	# 	it "the species of the pet" do 
	# 		expect(["cat", "dot", "bunny wearing backpack"]).to include "cat"
	# 	end
	# end
end

