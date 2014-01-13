require 'spec_helper'
require_relative "../lib/pet"


describe Pet do
	before(:each) do
		@test_pet_1 = Pet.new("Scout", :species => "rabbit", :number_of_claws => 20, :number_of_teeth => 30, :number_of_backpacks => 2)
		@test_pet_2 = Pet.new("Rufus", :number_of_backpacks =>1 )
		@test_pet_3 = Pet.new("Theo", )
	end
	describe '#initialize' do
		it 'initialize a new Pet instance' do
			expect(@test_pet_1).to eq @test_pet_1
			expect(@test_pet_2).to eq @test_pet_2
			expect(@test_pet_3).to eq @test_pet_3
		end

		it 'initialize a new pet instance, check name' do
			expect(@test_pet_1.name).to eq "Scout"
			expect(@test_pet_2.name).to eq "Rufus"
			expect(@test_pet_3.name).to eq "Theo"
		end

		it 'initialize a new pet instance, check species' do
			expect(@test_pet_1.species).to eq "rabbit"
			expect(["cat", "dog", "bunny wearing backpack"]).to include @test_pet_2.species
			expect(["cat", "dog", "bunny wearing backpack"]).to include @test_pet_3.species
		end

		it 'initialize a new pet instance, check number_of_claws' do
			expect(@test_pet_1.number_of_claws).to eq 20
			expect(@test_pet_2.number_of_claws).to eq nil
			expect(@test_pet_3.number_of_claws).to eq nil
		end

		it 'initialize a new pet instance, check number_of_teeth' do
			expect(@test_pet_1.number_of_teeth).to eq 30
			expect(@test_pet_2.number_of_teeth).to eq nil
			expect(@test_pet_3.number_of_teeth).to eq nil
		end

		it 'initialize a new pet instance, check number_of_backpacks' do
			expect(@test_pet_1.number_of_backpacks).to eq 2
			expect(@test_pet_2.number_of_backpacks).to eq 1
			expect(@test_pet_3.number_of_backpacks).to eq nil
		end


	end
end
