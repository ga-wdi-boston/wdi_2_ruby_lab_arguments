require 'spec_helper'
require_relative '../lib/pet'

describe Pet do
	# describe '#Pet' do
	# 	it "add the name of the pet" do 
	# 		pet = Pet.new("duoduo", "dog", 4, 10, 2)
	# 		expect(pet.name).to eq 'duoduo'
	# 	end
	# end

	describe '#Species' do
		it "the species of the pet" do 
			expect(["cat", "dot", "bunny wearing backpack"]).to include "cat"
		end
	end
end

