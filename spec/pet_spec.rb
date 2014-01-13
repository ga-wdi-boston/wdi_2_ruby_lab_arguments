require 'spec_helper'
require_relative "../lib/pet"


describe Pet do
	before(:each) do
		@test_pet_1 = Pet.new("Scout", "bunny", 12, 30, 1)
		# @test_pet_2 = Pet.new("Rufus", )
	end
	describe '#initialize' do
		it 'initialize a new Pet instance' do
			expect(@test_pet_1).to eq @test_pet_1
			# expect(@test_pet_2).to eq @test_pet_1
		end

		it 'initialize a new pet instance, check name' do
			expect(@test_pet_1.name).to eq "Scout"
			# expect(@test_pet_2.name).to eq "Scout"
		end

		it 'initialize a new pet instance, check species' do
			expect(@test_pet_1.species).to eq "bunny"
			# expect(@test_pet_2.species).to eq "bunny"
		end

		it 'initialize a new pet instance, check number_of_claws' do
			expect(@test_pet_1.number_of_claws).to eq 12
			# expect(@test_pet_2.number_of_claws).to eq 12
		end

		it 'initialize a new pet instance, check number_of_teeth' do
			expect(@test_pet_1.number_of_teeth).to eq 30
			# expect(@test_pet_2.number_of_claws).to eq 12
		end

		it 'initialize a new pet instance, check number_of_backpacks' do
			expect(@test_pet_1.number_of_backpacks).to eq 1
			# expect(@test_pet_2.number_of_backpacks).to eq 1
		end


	end
end
